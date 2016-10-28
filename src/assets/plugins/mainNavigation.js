/*
 * This file has been created by Ergosign GmbH - All rights reserved - http://www.ergosign.de
 * DO NOT ALTER OR REMOVE THIS COPYRIGHT NOTICE OR THIS FILE HEADER.
 *
 * This file and the code contained in it are subject to the agreed contractual terms and conditions,
 * in particular with regard to resale and publication.
 */

/**
 * This class represents  an intelligent main navigation that tracks mouse position to anticipate whether the user would like
 * to navigate to a submenu or a main navigation item, to prevent that other navigation overlays open during mouse travel.
 *
 * Class history:
 *  - 0.1: First release, working (patrickalt)
 *
 * @author patrickalt
 * @date 11.06.14
 * @constructor
 */


(function (jQuery) {
    "use strict";

    jQuery.mainNavigation = function (el, options) {
        // To avoid scope issues, use 'base' instead of 'this'
        // to reference this class from internal events and functions.
        var base = this;

        base.init = function () {

            // Access to jQuery and DOM versions of element
            base.$el = jQuery(el);
            base.$menu = base.$el;
            base.el = el;

            // Add a reverse reference to the DOM object
            base.$el.data("mainNavigation", base);

            base.options = jQuery.extend({
                itemSelector: "li",
                triggerItemSelector: '> a',
                menuSelector: '.navbar-submenu',
                activationClass: 'open',
                submenuSelector: "*",
                submenuDirection: "below",
                tolerance: 0,
                delay: 200,
                mouseLocsTracked: 5
            }, options);

            // Index the main navigation list items and anchors
            base.$items = base.$el.find(base.options.itemSelector);
            base.$itemAnchor = base.$items.find(base.options.triggerItemSelector);
            base.$menuSelector = base.$items.find(base.options.menuSelector);

            // default variables
            base.isMenuOpen = false;
            base.isHoveringActive = false;
            base.mouseLocs = [];
            base.timeoutId = null;
            base.lastDelayLoc = null;
            base.hasInputFocus = false;
            base.activeItem = null;

            // Event handling
            base.$items.on('mouseenter focus', function (e) {
                e.preventDefault();
                //e.stopImmediatePropagation()

                base.mouseenterItem(this);


            });

            base.$items.on('mouseleave blur', function (e) {
                e.preventDefault();

            //   base.mouseleaveItem();

            });

            $(document).on('mousemove', function (e) {
                base.mousemoveDocument(e);
            });

            base.$menu.on('mouseleave', function () {
                base.mouseleaveMenu();
            });

         //   base.activateHovering();

        };

        /**************************************************
         ** Add some logic to the navigation, based      **
         ** on the jquery-menu-aim by kamens             **
         ** https://github.com/kamens/jQuery-menu-aim    **
         *************************************************/

         /**
         * Keep track of the last few locations of the mouse.
         */
        base.mousemoveDocument = function (e) {
            var mouseLocsTracs = base.options.mouseLocsTracked;

            base.mouseLocs.push({x: e.pageX, y: e.pageY});

            if (base.mouseLocs.length > mouseLocsTracs) {
                base.mouseLocs.shift();
            }
        };

        /**
         * Cancel possible item activations when leaving the menu entirely
         */
        base.mouseleaveMenu = function() {
            if (base.timeoutId) {
                clearTimeout(base.timeoutId);
            }

            base.activeItem = null;
            base.$items.removeClass(base.options.activationClass);

        };

        /**
         * Trigger a possible item activation whenever entering a new item.
         */
        base.mouseenterItem = function(item)
        {
            if (base.timeoutId)
            {
                // Cancel any previous activation delays
                clearTimeout(base.timeoutId);
            }
            base.possiblyActivate(item);
        };

        base.mouseleaveItem = function()
        {
            $.noop(this);

        };

        /**
         * Activate a menu item.
         */
        base.activate = function(item)
        {
            if (item == base.activeItem) {
                return;
            }
            base.$items.removeClass(base.options.activationClass);
            base.activeItem = item;
            $(base.activeItem).addClass(base.options.activationClass);
        };

        /**
         * Possibly activate a menu item. If mouse movement indicates that we
         * shouldn't activate yet because user may be trying to enter
         * a submenu's content, then delay and check again later.
         */
        base.possiblyActivate = function(item)
        {
            var delay = base._activationDelay();

            if (delay)
            {
                base.timeoutId = setTimeout(function()
                {
                    base.possiblyActivate(item);
                }, delay);
            }
            else
            {
                base.activate(item);
            }
        };

        /**
         * Return the amount of time that should be used as a delay before the
         * currently hovered item is activated.
         *
         * Returns 0 if the activation should happen immediately. Otherwise,
         * returns the number of milliseconds that should be delayed before
         * checking again to see if the item should be activated.
         */
        base._activationDelay = function()
        {
            if (!base.activeItem || !$(base.activeItem).is(base.options.submenuSelector))
            {
                // If there is no other submenu row already active, then
                // go ahead and activate immediately.
                //console.log(base.activeItem);
                return 0;
            }

            var offset = base.$menu.offset(),
                upperLeft = {
                    x: offset.left,
                    y: offset.top - base.options.tolerance
                },
                upperRight = {
                    x: offset.left + base.$menu.outerWidth(),
                    y: upperLeft.y
                },
                lowerLeft = {
                    x: offset.left,
                    y: offset.top + base.$menu.outerHeight() + base.options.tolerance
                },
                lowerRight = {
                    x: offset.left + base.$menu.outerWidth(),
                    y: lowerLeft.y
                },
                loc = base.mouseLocs[base.mouseLocs.length - 1],
                prevLoc = base.mouseLocs[0];

            if (!loc) {
                return 0;
            }

            if (!prevLoc) {
                prevLoc = loc;
            }

            if (prevLoc.x < offset.left || prevLoc.x > lowerRight.x ||
                prevLoc.y < offset.top || prevLoc.y > lowerRight.y) {
                // If the previous mouse location was outside of the entire
                // menu's bounds, immediately activate.
                return 0;
            }

            if ( base.lastDelayLoc  &&
                loc.x ==  base.lastDelayLoc .x && loc.y ==  base.lastDelayLoc .y) {
                // If the mouse hasn't moved since the last time we checked
                // for activation status, immediately activate.
                return 0;
            }

            // Detect if the user is moving towards the currently activated
            // submenu.
            //
            // If the mouse is heading relatively clearly towards
            // the submenu's content, we should wait and give the user more
            // time before activating a new row. If the mouse is heading
            // elsewhere, we can immediately activate a new row.
            //
            // We detect this by calculating the slope formed between the
            // current mouse location and the upper/lower right points of
            // the menu. We do the same for the previous mouse location.
            // If the current mouse location's slopes are
            // increasing/decreasing appropriately compared to the
            // previous's, we know the user is moving toward the submenu.
            //
            // Note that since the y-axis increases as the cursor moves
            // down the screen, we are looking for the slope between the
            // cursor and the upper right corner to decrease over time, not
            // increase (somewhat counterintuitively).

            var decreasingCorner = upperRight,
                increasingCorner = lowerRight;

            // Our expectations for decreasing or increasing slope values
            // depends on which direction the submenu opens relative to the
            // main menu. By default, if the menu opens on the right, we
            // expect the slope between the cursor and the upper right
            // corner to decrease over time, as explained above. If the
            // submenu opens in a different direction, we change our slope
            // expectations.
            if (base.options.submenuDirection == "left") {
                decreasingCorner = lowerLeft;
                increasingCorner = upperLeft;
            } else if (base.options.submenuDirection == "below") {
                decreasingCorner = lowerRight;
                increasingCorner = lowerLeft;
            } else if (base.options.submenuDirection == "above") {
                decreasingCorner = upperLeft;
                increasingCorner = upperRight;
            }

            var decreasingSlope = base._slope(loc, decreasingCorner),
                increasingSlope = base._slope(loc, increasingCorner),
                prevDecreasingSlope = base._slope(prevLoc, decreasingCorner),
                prevIncreasingSlope = base._slope(prevLoc, increasingCorner);


            if (decreasingSlope < prevDecreasingSlope &&
                increasingSlope > prevIncreasingSlope) {
                // Mouse is moving from previous location towards the
                // currently activated submenu. Delay before activating a
                // new menu row, because user may be moving into submenu.
                base.lastDelayLoc  = loc;
                return base.options.delay;
            }

            base.lastDelayLoc  = null;
            return 0;
        };

        base._slope = function(a, b)
        {
            var x = b.x - a.x;
            var y = b.y - a.y;
            var theta = ( Math.atan2(y, x) * (180 / Math.PI));
            return theta;
        };

        // Run initializer
        base.init();
    };

    jQuery.fn.mainNavigation = function (options) {
        return this.each(function () {
            new jQuery.mainNavigation(this, options);
        });
    };

})(jQuery);


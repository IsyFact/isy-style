/*
 * This file has been created by Ergosign GmbH - All rights reserved - http://www.ergosign.de
 * DO NOT ALTER OR REMOVE THIS COPYRIGHT NOTICE OR THIS FILE HEADER.
 *
 * This file and the code contained in it are subject to the agreed contractual terms and conditions,
 * in particular with regard to resale and publication.
 */

/**
 * This class represents an extended version of bootstrap tabs which is able to show all tabbed content in one tab
 *
 * Class history:
 *  - 0.1: First release, working (patrickalt)
 *
 * @author patrickalt
 * @date 17.06.14
 * @constructor
 */

/* ========================================================================
 * Based on Bootstrap tab.js v3.1.1
 * http://getbootstrap.com/javascript/#tabs
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


!function ($) {
    'use strict';

    // EXTENDED–TAB CLASS DEFINITION
    // ====================

    var ExtendedTab = function (element) {
        this.element = $(element)

    }

    ExtendedTab.prototype.show = function (element) {
        if(element) {
            var $this = element;
        }
        else {
            var $this    = this.element
        }

        // Custom event used to harmonize the panel headline width on tab change
        $this.trigger('tabChange');

        var $ul      = $this.closest('ul:not(.dropdown-menu)')

        if($this.is('a[data-target]')) {
            var selector = $this.attr('data-target').split(", ");
        }
        else {
            var selector = $this.data('target')
        }

        if (!selector) {
            selector = $this.attr('href')
            selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
        }

        if ($this.parent('li').hasClass('active') ) return

        var previous = $ul.find('.active:last a')[0]
        var e        = $.Event('show.bs.extendedTab', {
            relatedTarget: previous
        })

        $this.trigger(e)

        if (e.isDefaultPrevented()) return

        var $target = $(selector)


        this.activate($this.parent('li'), $ul)

        //console.log($target);

        if($target.length > 1) {

            this.activateAll($target, function () {
                $this.trigger({
                    type: 'shown.bs.extendedTab',
                    relatedTarget: previous
                })
            })
        }
        else {
            this.activate($target, $target.parent(), function () {
                $this.trigger({
                    type: 'shown.bs.extendedTab',
                    relatedTarget: previous
                })
            })
        }

    }

    ExtendedTab.prototype.activate = function (element, container, callback) {
        var $active    = container.find('> .active')
        var transition = callback
            && $.support.transition
            && $active.hasClass('fade')

        function next() {
            $active
                .removeClass('active')
                .find('> .dropdown-menu > .active')
                .removeClass('active')

            element.addClass('active')

            if (transition) {
                element[0].offsetWidth // reflow for transition
                element.addClass('in')
            } else {
                element.removeClass('fade')
            }

            if (element.parent('.dropdown-menu')) {
                element.closest('li.dropdown').addClass('active')
            }

            callback && callback()
        }

        transition ?
            $active
                .one($.support.transition.end, next)
                .emulateTransitionEnd(150) :
            next()

        $active.removeClass('in')
    }

    ExtendedTab.prototype.activateAll = function (elements, callback) {

        $.each(elements, function(index, item){

            var transition = callback
                && $.support.transition
                && $(item).hasClass('fade')

            function next() {

                $(item).addClass('active')

                if (transition) {
                    $(item)[0].offsetWidth // reflow for transition
                    $(item).addClass('in')
                } else {
                    $(item).removeClass('fade')
                }

                if ($(item).parent('.dropdown-menu')) {
                    $(item).closest('li.dropdown').addClass('active')
                }

                callback && callback()
            }

            transition ?
                $(item)
                    .one($.support.transition.end, next)
                    .emulateTransitionEnd(150) :
                next()

            $(item).removeClass('in')

            $(item).addClass('active');
        })

    }

    // EXTENDED–TAB PLUGIN DEFINITION
    // =====================

    var old = $.fn.extendedTab

    $.fn.extendedTab = function ( option ) {
        return this.each(function () {
            var $this = $(this)
            var data  = $this.data('bs.extendedTab')

            if (!data) $this.data('bs.extendedTab', (data = new ExtendedTab(this)))
            if (typeof option == 'string') data[option]()
        })
    }

    $.fn.extendedTab.Constructor = ExtendedTab


    // EXTENDED–TAB NO CONFLICT
    // ===============

    $.fn.extendedTab.noConflict = function () {
        $.fn.extendedTab = old
        return this
    }


    // EXTENDED–TAB DATA-API
    // ============

    $(document).ready( function () {
        'use strict';

        $('a[data-toggle="extendedTab"]').extendedTab();

    });

    $(document).on('click.bs.extendedTab.data-api', '[data-toggle="extendedTab"], [data-toggle="extendedPill"]', function (e) {
        e.preventDefault()
        $(this).extendedTab('show')
    })



}(jQuery);




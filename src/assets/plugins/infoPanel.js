/*
 * This file has been created by Ergosign GmbH - All rights reserved - http://www.ergosign.de
 * DO NOT ALTER OR REMOVE THIS COPYRIGHT NOTICE OR THIS FILE HEADER.
 *
 * This file and the code contained in it are subject to the agreed contractual terms and conditions,
 * in particular with regard to resale and publication.
 */

/**
 * This script toggles the display of a a sidebar within some page layouts
 *
 * Class history:
 *  - 0.1: First release, working (patrickalt)
 *
 * @author patrickalt
 * @date 18.06.14
 * @constructor
 */

(function ($) {
    'use strict';

    // INFO PANEL CLASS DEFINITION
    // ====================

    var InfoPanel = function (element, options) {
        this.element = $(element);
        this.options = $.extend({}, InfoPanel.DEFAULTS, options)
        this.init(this.element, this.options);
    };


    InfoPanel.DEFAULTS = {
        toggle: true,
        globalContainerClass: '.outer-container',
        toggleItem: '#toggleInfoPanel'
    }

    InfoPanel.prototype.init = function(element, options) {
        var base = this;
        var $this    = element;
        var $toggleItem = $(options.toggleItem);


        if(options.toggle && $toggleItem.length) {
            $toggleItem.on("click", function(){
                base.toggleInfoPanel($this);
            });

        }
    };

    InfoPanel.prototype.toggleInfoPanel = function(element) {
        var $parentGrid =  element.parent().prev();

        if($(this.options.globalContainerClass).hasClass('show-info-panel')){
            $(this.options.globalContainerClass).removeClass('show-info-panel');
            element.addClass('hide');
            $parentGrid.removeClass().addClass('col-xs-12');
        }
        else {
            $(this.options.globalContainerClass).addClass('show-info-panel');
            element.removeClass('hide');
            $parentGrid.removeClass().addClass('col-xs-9');
        }

    };


    // INFO PANEL PLUGIN DEFINITION
    // =====================

    var old = $.fn.infoPanel;

    $.fn.infoPanel = function ( option ) {
        return this.each(function () {
            var $this = $(this);
            var data  = $this.data('bs.infoPanel');
            var options = $.extend({}, InfoPanel.DEFAULTS, $this.data(), typeof option == 'object' && option);

            if (!data) $this.data('bs.infoPanel', (data = new InfoPanel(this, options)));
            if (typeof option == 'string') data[option]();
        });
    };

    $.fn.infoPanel.Constructor = InfoPanel;


    // INFO PANEL NO CONFLICT
    // ===============

    $.fn.infoPanel.noConflict = function () {
        $.fn.infoPanel = old;
        return this;
    };

})(jQuery);


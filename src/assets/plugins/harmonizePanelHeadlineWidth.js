/*
 * This file has been created by Ergosign GmbH - All rights reserved - http://www.ergosign.de
 * DO NOT ALTER OR REMOVE THIS COPYRIGHT NOTICE OR THIS FILE HEADER.
 *
 * This file and the code contained in it are subject to the agreed contractual terms and conditions,
 * in particular with regard to resale and publication.
 */

/**
 * This script vertically aligns the optional function buttons in the headers of nested panel groups.
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

    // PANEL HEADLINE CLASS DEFINITION
    // ====================

    var HarmonizePanelHeadlineWidth = function (element) {
        this.element = $(element);

        this.init(this.element);
    };

    HarmonizePanelHeadlineWidth.prototype.init = function(element) {
        var base = this;
        var $this    = $(element);
        var $headlines = $this.find('.panel-title');


        base.setMaximumWidth($headlines, base._getMaximumWidth($headlines)+5);

        $(document).on('tabChange', function() {
            base.setMaximumWidth($headlines, base._getMaximumWidth($headlines));
            console.log(this);
        });
    };


    HarmonizePanelHeadlineWidth.prototype._getMaximumWidth = function(headlines) {
        var maxWidth = 0;

        $.each(headlines, function(index, item) {

            var $headline = $(item).children().first();
            var currentHeadlineWidth = $headline.outerWidth();
            if(maxWidth <= currentHeadlineWidth) {
                maxWidth = currentHeadlineWidth;
            }
        });

        return (maxWidth);
    }

    HarmonizePanelHeadlineWidth.prototype.setMaximumWidth = function(headlines, maxWidth) {

        $.each(headlines, function(index, item) {
            var $headline = $(item).children().first();

            $headline.outerWidth(maxWidth);
        });
    }


    // PANEL HEADLINE PLUGIN DEFINITION
    // =====================

    var old = $.fn.harmonizePanelHeadlineWidth;

    $.fn.harmonizePanelHeadlineWidth = function ( option ) {
        return this.each(function () {
            var $this = $(this);
            var data  = $this.data('bs.harmonizePanelHeadlineWidth');

            if (!data) $this.data('bs.harmonizePanelHeadlineWidth', (data = new HarmonizePanelHeadlineWidth(this)));
            if (typeof option == 'string') data[option]();
        });
    };

    $.fn.harmonizePanelHeadlineWidth.Constructor = HarmonizePanelHeadlineWidth;


    // PANEL HEADLINE NO CONFLICT
    // ===============

    $.fn.harmonizePanelHeadlineWidth.noConflict = function () {
        $.fn.harmonizePanelHeadlineWidth = old;
        return this;
    };

})(jQuery);


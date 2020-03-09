(function($) {
'use strict';

$.fn.extend({
    //Helper Function for Caret positioning
    caret: function(begin, end) {
        var range;

        if (this.length === 0 || this.is(":hidden")) {
            return;
        }

        if (typeof begin == 'number') {
            end = (typeof end === 'number') ? end : begin;
            return this.each(function() {
                if (this.setSelectionRange) {
                    this.setSelectionRange(begin, end);
                } else if (this.createTextRange) {
                    range = this.createTextRange();
                    range.collapse(true);
                    range.moveEnd('character', end);
                    range.moveStart('character', begin);
                    range.select();
                }
            });
        } else {
            if (this[0].setSelectionRange) {
                begin = this[0].selectionStart;
                end = this[0].selectionEnd;
            } else if (document.selection && document.selection.createRange) {
                range = document.selection.createRange();
                begin = 0 - range.duplicate().moveStart('character', -100000);
                end = begin + range.text.length;
            }
            return { begin: begin, end: end };
        }
    },
    unmask: function() {
        return $(this).inputmask('remove');
    },
    
    mask: function() {
        var $inputMask = $(this);
        
        // Ob die Platzhalter der Maskierung beim Verlassen des Feldes ausgeblendet werden sollen
        var clearMaskOnLostFocus = $inputMask.attr('data-isymask-clearonblur');
        if (clearMaskOnLostFocus === undefined || clearMaskOnLostFocus === "true"){
          //Attribut war nicht gesetzt, setze den Defaultwert des Plugins
          clearMaskOnLostFocus = true;
        } else {
          clearMaskOnLostFocus = false;
        }
        // Ob standardmäßiges Überschreiben (wie bei einfg-Taste) aktiviert sein soll
        // Das Plugin hat hier eine verwirrende Namenskonvention:
        // insertMode==true bedeutet, dass KEIN insert/Überschreiben stattfindet
        var insertMode = $inputMask.attr('data-isymask-insertmode');
        if (insertMode === undefined || insertMode === "true"){
          //Attribut war nicht gesetzt, setze unseren Defaultwert
          insertMode = false;
        } else {
          insertMode = true;
        }
        
        var options = {
            'mask' : $inputMask.attr('data-isymask-mask'),
            'placeholder' : $inputMask.attr('data-isymask-placeholder'),
            'insertMode' : insertMode,
            'clearMaskOnLostFocus' : clearMaskOnLostFocus
        };
        return $inputMask.inputmask(options);
    }    

});


})(jQuery);

(function($) {
    'use strict';
    var uniqueCntr = 0;
    $.fn.scrolled = function (waitTime, fn) {
        if (typeof waitTime === "function") {
            fn = waitTime;
            waitTime = 500;
        }
        var tag = "scrollTimer" + uniqueCntr++;
        this.scroll(function () {
            var self = $(this);
            var timer = self.data(tag);
            if (timer) {
                clearTimeout(timer);
            }
            timer = setTimeout(function () {
                self.removeData(tag);
                fn.call(self[0]);
            }, waitTime);
            self.data(tag, timer);
        });
    };
})(jQuery);

jQuery.fn.sortElements = (function(){
	 
    var sort = [].sort;
 
    return function(comparator, getSortable) {
 
        getSortable = getSortable || function(){return this;};
 
        var placements = this.map(function(){
 
            var sortElement = getSortable.call(this),
                parentNode = sortElement.parentNode,
 
                nextSibling = parentNode.insertBefore(
                    document.createTextNode(''),
                    sortElement.nextSibling
                );
 
            return function() {
                parentNode.insertBefore(this, nextSibling);
                parentNode.removeChild(nextSibling);
            };
 
        });
 
        return sort.call(this, comparator).each(function(i){
            placements[i].call(getSortable.call(this));
        });
    };
 
})();

scriptLoadedJqueryutils = function() {
	'use strict';

	return true;
};

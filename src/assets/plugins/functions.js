/**
 * Allgemeine Funktionen
 */

/**
 * Registriert einen einfachen und einen Doppelklick auf einem Element. Analog
 * zu:
 * http://stackoverflow.com/questions/6330431/jquery-bind-double-click-and-single-click-separately
 */
function multiClick($element, singleClick, doubleClick, delay, clicks, timer) {

	$element.on("click", function(e) {

		clicks++; // count clicks

		if (clicks === 1) {

			timer = setTimeout(function() {

				if(singleClick !== null) {
					singleClick(e); // perform single-click action
				}
				clicks = 0; // after action performed, reset counter

			}, delay);

		} else {

			clearTimeout(timer); // prevent single-click action

			if (doubleClick !== null) {
				doubleClick(e);
			}

			// perform double-click action
			clicks = 0; // after action performed, reset counter
		}

	}).on("dblclick", function(e) {
		e.preventDefault(); // cancel system double-click event
	});

}

/**
 * JSF-AJAX Event Callback. Blockiert die GUI bei AJAX-Aufrufen.
 */
function blockUi(callback) {
    if (callback.status === 'begin') {
    	$(".modal-loading").css("display","block");
    }
    
    if (callback.status === 'complete') {
    	$(".modal-loading").css("display","none");
    }

}

function unblockUi(callback) {
    $(".modal-loading").css("display","none");
}

/**
 * Pad-Funktion für Strings.
 */
function pad (str, max) {
	  str = str.toString();
	  return str.length < max ? pad("0" + str, max) : str;
}


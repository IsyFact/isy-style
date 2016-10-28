// This file has been created by ERGOSIGN GmbH - All rights reserved - http://www.ergosign.de
// DO NOT ALTER OR REMOVE  THIS COPYRIGHT NOTICE OR THIS FILE HEADER.
//
// This file and the code contained in it are subject to the agreed contractual terms and conditions,
// in particular with regard to resale and publication.

//examplary jquery code for prototypic interaction

$(document).ready( function () {
    'use strict';

    //setup datepicker from third party plugin by clicking the cal-icon-button
    $('#datepicker.input-group.date').datepicker({
        format: "dd.mm.yyyy",
        weekStart: 1,
        language: "de",
        todayHighlight: true,
        autoclose: true,
        componentButtonOnly: true
    });

    $("#datepicker input").mask("99.99.9999");

    $('#timepicker input').timepicker();
    $("#timepicker input").mask("99:99");


    $('.modal').modal(
        {
            show: false
        }
    );

    $('.es-popover').popover();

    $('.es-tooltip').tooltip();

    $('.sortable').click(function () {

        if($(this).hasClass('sort-up')) {
            $(this).removeClass('sort-up');
            $(this).addClass('sort-down');
        }
        else if($(this).hasClass('sort-down')) {
            $(this).removeClass('sort-down');
            $(this).addClass('sort-up');
        }
    });

    $('#main-nav').mainNavigation();

    $('[data-group="harmonizePanelHeadlineWidth"]').harmonizePanelHeadlineWidth();

    $('[data-toggle="infoPanel"]').infoPanel();

    //File Upload - Wenn die Datei mit JS hochgeladen werden soll. Ansonsten normal mit dem Formular übergeben.
    //$_FILES["images"]["name"][$key];
    //move_uploaded_file( $_FILES["images"]["tmp_name"][$key], "uploads/" . $_FILES['images']['name'][$key]);
    $('.btn-file :file').on('fileselect', function(event, numFiles, label) {

        var input = $(this).parents('.input-group').find(':text'),
            log = numFiles > 1 ? numFiles + ' files selected' : label; //example: 10 files selected or background.jpg

        if( input.length ) { //if path is placed in input - No design
            //upload here
            input.val(log);
        } else if( log ) { //files selected via button -> files window
            //Upload here
            alert("File to upload: \n"+log);
        }

    });
});



//File Upload
$(document).on('change', '.btn-file :file', function () {
    'use strict';

    var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');

    input.trigger('fileselect', [numFiles, label]);
});
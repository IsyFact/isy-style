<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BVA UI</title>
    <meta name="description" content="">
    <meta name="HandheldFriendly" content="True">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" type="text/css" href="css/styles.css" media="all"/>
    <script type="text/javascript" src="lib/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="lib/modernizr.js"></script>

    <script type="text/javascript" src="plugins/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="plugins/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="plugins/jquery.maskedinput.js"></script>
    <script type="text/javascript" src="plugins/extendedBootstrapTab.js"></script>
    <script type="text/javascript" src="plugins/harmonizePanelHeadlineWidth.js"></script>
    <script type="text/javascript" src="plugins/infoPanel.js"></script>

    <!--[if lte IE 8]>
    <link rel="stylesheet" type="text/css" href="css/ie8fixes.css" media="screen"/>

    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->

</head>

<body role="document">

    <div class="outer-container">

        <div class="main-header">

            <div class="sr-only">
                <ol>
                    <li><a href="#main-nav" title="zur Hauptnavigation springen">zur Hauptnavigation</a></li>
                    <li><a href="#content" title="zum Inhalt der Seite springen">zum Inhalt</a></li>
                </ol>
            </div>

            <div class="header-colorbar"></div>

            <div class="header-content" role="banner">
                <img class="logo" alt="Bundesverwaltungsamt Logo" src="img/logo.png">

                <div class="pull-right text-right">

                    <div class="brand">
                        <img alt="Reister Portal Logo" src="img/registerLogo.png">
                        <span>Registerportal Bundesverwaltungsamt</span>
                    </div>

                    <form class="form-horizontal" role="form">
                        <a href="#" class="btn btn-link"><span class="icon icon-user"></span> Max Mustermann</a>
                        <button class="btn btn-default" type="button">
                            Abmelden
                        </button>
                    </form>

                    <div class="btn-group">
                        <ul aria-labelledby="dropdownMenu1" role="menu" class="dropdown-menu">
                            <li role="presentation" class="selected"><a href="#" tabindex="-1" role="menuitem">Logout</a></li>
                            <li role="presentation"><a href="#" tabindex="-1" role="menuitem">Preferences</a></li>
                        </ul>
                    </div>

                </div>
            </div>

            <div id="main-nav" class="navbar navbar-default" role="navigation">

                <ul class="nav nav-tabs pull-right">

                    <li class="active">
                        <a href="index.html" aria-haspopup="true" aria-owns="submenu-1" aria-controls="submenu-1" aria-expanded="false">Vorlagen</a>

                        <ul class="sr-only" id="submenu-1">
                            <li><a href="page-details.html">Steuerelementübersicht</a></li>
                            <li><a href="page-details.html">Detailseite</a></li>
                            <li><a href="page-modal-edit-date.html">Modaler Bearbeitungsdialog</a></li>
                            <li><a href="page-modal-wizard.html">Modaler Wizard-Dialog</a></li>
                            <li><a href="page-nojs-edit-data">Bearbeitungsseite ohne Javascript</a></li>
                            <li><a href="page-search-result.html">Suchergebnisse</a></li>
                            <li><a href="page-dashboard.html">Dashboard</a></li>
                        </ul>

                        <div class="navbar-submenu">
                            <div class="row row-df">
                                <div class="col-lg-3">
                                    <div class="submenu-text">
                                        <span class="icon icon-placeholder "></span>
                                        <p>Lorem ipsum dolor sit amet candellarin blarum Lorem ipsum dolor sit amet candellarin
                                            blarum Lorem ipsum dolor sit amet candellarin blarum</p>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="index.html">Steuerelementübersicht</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="page-details.html" >Detailseite</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="page-modal-edit-data.html">Modaler Bearbeitungsdialog</a>
                                        </div>
                                    </div>
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="page-nojs-edit-data.html">Bearbeitungsseite ohne Javascript</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="page-search-result.html">Suchergebnisse</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="page-dashboard.html">Dashboard</a>
                                        </div>
                                    </div>
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="page-modal-wizard.html">Modaler Wizard-Dialog</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="page-search-result-print.html">Suchergebnisse Print</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li>
                        <a href="page-details.html" aria-haspopup="true" aria-owns="submenu-2" aria-controls="submenu-2" aria-expanded="false">Punkt 2</a>

                        <ul class="sr-only" id="submenu-2">
                            <li><a href="/subpage">Unterpunkt A</a></li>
                            <li><a href="/subpage">Unterpunkt B</a></li>
                            <li><a href="/subpage">Unterpunkt C</a></li>
                            <li><a href="/subpage">Unterpunkt D</a></li>
                            <li><a href="/subpage">Unterpunkt E</a></li>
                            <li><a href="/subpage">Unterpunkt F</a></li>
                        </ul>
                        <div class="navbar-submenu orange">
                            <div class="row row-df">
                                <div class="col-lg-3">
                                    <div class="submenu-text">
                                        <span class="icon icon-placeholder "></span>
                                        <p>Lorem ipsum dolor sit amet candellarin blarum Lorem ipsum dolor sit amet candellarin
                                            blarum Lorem ipsum dolor sit amet candellarin blarum</p>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu A</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu B</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu C</a>
                                        </div>
                                    </div>
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu D</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu E</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu F</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li>
                        <a href="index.html" aria-haspopup="true" aria-owns="submenu-3" aria-controls="submenu-3" aria-expanded="false">Punkt 3</a>

                        <ul class="sr-only" id="submenu-3">
                            <li><a href="/subpage">Unterpunkt A</a></li>
                            <li><a href="/subpage">Unterpunkt B</a></li>
                            <li><a href="/subpage">Unterpunkt C</a></li>
                            <li><a href="/subpage">Unterpunkt D</a></li>
                            <li><a href="/subpage">Unterpunkt E</a></li>
                        </ul>

                        <div class="navbar-submenu green">
                            <div class="row row-df">
                                <div class="col-lg-3">
                                    <div class="submenu-text">
                                        <span class="icon icon-placeholder "></span>
                                        <p>Lorem ipsum dolor sit amet candellarin blarum Lorem ipsum dolor sit amet candellarin
                                            blarum Lorem ipsum dolor sit amet candellarin blarum</p>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu A</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu B</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu C</a>
                                        </div>
                                    </div>
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu D</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu E</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="index.html" aria-haspopup="true" aria-owns="submenu-4" aria-controls="submenu-4" aria-expanded="false">Punkt 4</a>

                        <ul class="sr-only" id="submenu-4">
                            <li><a href="/subpage">Unterpunkt A</a></li>
                            <li><a href="/subpage">Unterpunkt B</a></li>
                            <li><a href="/subpage">Unterpunkt C</a></li>
                            <li><a href="/subpage">Unterpunkt D</a></li>
                        </ul>

                        <div class="navbar-submenu lightBlue">
                            <div class="row row-df">
                                <div class="col-lg-3">
                                    <div class="submenu-text">
                                        <span class="icon icon-placeholder "></span>
                                        <p>Lorem ipsum dolor sit amet candellarin blarum Lorem ipsum dolor sit amet candellarin
                                            blarum Lorem ipsum dolor sit amet candellarin blarum</p>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu A</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu B</a>
                                        </div>
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu C</a>
                                        </div>
                                    </div>
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu D</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li>
                        <a href="index.html" aria-haspopup="true" aria-owns="submenu-5" aria-controls="submenu-5" aria-expanded="false">Punkt 5</a>

                        <ul class="sr-only" id="submenu-5">
                            <li><a href="/subpage">Unterpunkt A</a></li>
                        </ul>

                        <div class="navbar-submenu yellow">
                            <div class="row row-df">
                                <div class="col-lg-3">
                                    <div class="submenu-text">
                                        <span class="icon icon-placeholder "></span>
                                        <p>Lorem ipsum dolor sit amet candellarin blarum Lorem ipsum dolor sit amet candellarin
                                            blarum Lorem ipsum dolor sit amet candellarin blarum</p>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu A</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li>
                        <a href="index.html" aria-haspopup="true" aria-owns="submenu-6" aria-controls="submenu-6" aria-expanded="false">Punkt 6</a>

                        <ul class="sr-only" id="submenu-6">
                            <li><a href="/subpage">Unterpunkt A</a></li>
                        </ul>

                        <div class="navbar-submenu red">
                            <div class="row row-df">
                                <div class="col-lg-3">
                                    <div class="submenu-text">
                                        <span class="icon icon-placeholder "></span>
                                        <p>Lorem ipsum dolor sit amet candellarin blarum Lorem ipsum dolor sit amet candellarin
                                            blarum Lorem ipsum dolor sit amet candellarin blarum</p>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <a href="/subpage">Submenu A</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                </ul>

                <div class="navbar-color"></div>
            </div>
        </div>
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

    <script type="text/javascript" src="lib/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="lib/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="lib/jquery.maskedinput.js"></script>
    <script type="text/javascript" src="lib/extendedBootstrapTab.js"></script>
    <script type="text/javascript" src="lib/harmonizePanelHeadlineWidth.js"></script>
    <script type="text/javascript" src="lib/infoPanel.js"></script>

    <!--[if lte IE 8]>
    <link rel="stylesheet" type="text/css" href="css/ie8fixes.css" media="screen"/>

    <script type="text/javascript" src="plugins/html5shiv.js"></script>
    <script type="text/javascript" src="plugins/respond.min.js"></script>
    <![endif]-->

</head>

<body role="document" class="print">

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
            </form>

            <div class="btn-group">
                <ul aria-labelledby="dropdownMenu1" role="menu" class="dropdown-menu">
                    <li role="presentation" class="selected"><a href="#" tabindex="-1" role="menuitem">Logout</a></li>
                    <li role="presentation"><a href="#" tabindex="-1" role="menuitem">Preferences</a></li>
                </ul>
            </div>

        </div>
    </div>
</div>


<div id="content" role="main">

    <div class="container-fluid maincontent">
        <div class="row row-df">
            <div class="col-lg-12">

                <h2 class="print-breadcrumb">Label Submenu:<span>Objektname/ID</span></h2>

                <button class="btn btn-default btn-print" type="button">Drucken</button>

                <div class="print-meta">S. 1 / 4 23.04.2014</div>

                <div class="panel-group" data-group="harmonizePanelHeadlineWidth">

                    <div class="panel ">
                        <div class="panel-heading">
                            <div class="panel-title ">

                                <div class="panel-groupline-container">
                                    <span class="panel-groupline"></span>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body">
                            <h4>Ergebnisliste (10)</h4>
                        </div>
                    </div>
                </div>

                <div class="table-container">

                    <table class="table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Icons</th>
                            <th>Username</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                            </td>
                            <td>@mdo</td>
                        </tr>
                        <tr class="active">
                            <td>2</td>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                            </td>
                            <td>@fat</td>
                        </tr>
                        <tr class="">
                            <td>3</td>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                            </td>
                            <td>@twitter</td>
                        </tr>
                        <tr class="">
                            <td>3</td>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                            </td>
                            <td>@twitter</td>
                        </tr>
                        <tr class="">
                            <td>3</td>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                            </td>
                            <td>@twitter</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</div> <!-- close outer-container -->
<script>
    // if the modal window is set to visible at launch the body tag needs the modal-open class
    //$('body').addClass("modal-open");
    $('.outer-container').addClass("show-info-panel");
</script>

    <div id="content" role="main">

        <div class="toolbar page">
            <a class="btn btn-icon-round btn-icon-round-large">
                <span class="icon icon-previous"></span> Zurück zur Liste
            </a>

            <div class="btn-group pull-right">
                <a class="btn btn-icon-round btn-icon-round-large">
                    <span class="icon icon-print"></span>
                </a>
                <a id="toggleInfoPanel" class="btn btn-icon-round btn-icon-round-large">
                    <span class="icon icon-info"></span>
                </a>
            </div>
        </div>

        <div class="container-fluid maincontent ">
            <div class="row row-df">
                <div class="col-lg-9">
                    <div class="panel-group panel-grey-back reset-maincontent-padding">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title clearfix">
                                <a data-toggle="collapse" href="#collapseOne">Basisdaten</a>

                                <div class="panel-groupline-container">
                                    <span class="panel-groupline"></span>
                                </div>
                            </div>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <form class="form-horizontal readonly" role="form">
                                    <div class="row row-df">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                <div class="col-lg-7">
                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                <div class="col-lg-7">
                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                <div class="col-lg-7">
                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                <div class="col-lg-7">
                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="address" class="col-lg-5 control-label">Adresse</label>

                                                <div class="col-lg-7">
                                                    <input id="address" type="text" class="form-control readonly" readonly="readonly" value="Lorem Ipsum">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="lorem" class="col-lg-5 control-label">und noch ein label</label>

                                                <div class="col-lg-7">
                                                    <input id="lorem" type="text" class="form-control readonly" readonly="readonly" value="Lorem Ipsum">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                    <ul class="nav nav-tabs">
                        <li>
                            <a href="#" data-toggle="extendedTab" data-target="#personalData, #data">Vollauskunft</a>
                        </li>
                        <li class="active">
                            <a href="#personalData" data-toggle="extendedTab">Personalien</a>
                        </li>
                        <li class="">
                            <a href="#data" data-toggle="extendedTab">Sachverhalte</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="extendedTab">SubTab 4</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="extendedTab">SubTab 5</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="extendedTab">SubTab 6</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="personalData" class="tab-pane active panel-group" data-group="harmonizePanelHeadlineWidth">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title clearfix">
                                        <a data-toggle="collapse" href="#collapseTwo"><span class="icon"></span>Personalien (2)</a>

                                        <div class="btn-toolbar">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-icon-round">
                                                    <span class="icon icon-plus"></span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="panel-groupline-container">
                                            <span class="panel-groupline"></span>
                                        </div>
                                    </div>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <span>Personalie A</span>

                                                    <div class="btn-toolbar">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-icon-round">
                                                                <span class="icon icon-edit"></span>
                                                            </button>
                                                            <button type="button" class="btn btn-icon-round ">
                                                                <span class="icon icon-delete"></span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="panel-groupline-container">
                                                        <span class="panel-groupline"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <form class="form-horizontal readonly" role="form">
                                                    <div class="row row-df">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="picture" class="col-lg-5 control-label">Lichtbild</label>

                                                                <div class="col-lg-2">
                                                                    <img class="img-responsive" src="img/dummyProfileImage.png"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row row-df">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row row-df">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <span>Personalie B</span>

                                                    <div class="btn-toolbar">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-icon-round">
                                                                <span class="icon icon-edit"></span>
                                                            </button>
                                                            <button type="button" class="btn btn-icon-round ">
                                                                <span class="icon icon-delete"></span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="panel-groupline-container">
                                                        <span class="panel-groupline"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <form class="form-horizontal readonly" role="form">
                                                    <div class="row row-df">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="picture" class="col-lg-5 control-label">Lichtbild</label>

                                                                <div class="col-lg-2">
                                                                    <img class="img-responsive" src="img/dummyProfileImage.png"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row row-df">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row row-df">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="name" class="col-lg-5 control-label">Name</label>

                                                                <div class="col-lg-7">
                                                                    <input id="name" type="text" class="form-control readonly" readonly="readonly" value="Miller">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-lg-5 control-label">Vorname</label>

                                                                <div class="col-lg-7">
                                                                    <input id="firstname" type="text" class="form-control readonly" readonly="readonly" value="John">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label for="birth" class="col-lg-5 control-label">Geburtsdatum</label>

                                                                <div class="col-lg-7">
                                                                    <input id="birth" type="text" class="form-control readonly" readonly="readonly" value="22.02.1922">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="code" class="col-lg-5 control-label">Identifikation</label>

                                                                <div class="col-lg-7">
                                                                    <input id="code" type="text" class="form-control readonly" readonly="readonly" value="46548464648">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div id="data" class="tab-pane  panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title clearfix">
                                    <a class="icon" data-toggle="collapse" href="#collapseThree">Sachverhalte (3)</a>

                                    <div class="btn-toolbar">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-icon-round">
                                                <span class="icon icon-plus"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="panel-groupline-container">
                                        <span class="panel-groupline"></span>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="table-container">
                                        <div class="btn-toolbar" role="toolbar">
                                            <div class="btn-group">
                                                <a class="btn btn-icon">
                                                    <span class="icon icon-delete"></span> L&ouml;schen
                                                </a>
                                                <a class="btn btn-icon">
                                                    <span class="icon icon-upload"></span> Exportieren
                                                </a>
                                            </div>
                                            <div class="btn-group">
                                                <a class="btn btn-icon">
                                                    <span class="icon icon-print"></span> Drucken
                                                </a>
                                                <a class="btn btn-icon">
                                                    <span class="icon icon-refresh"></span> Aktualisieren
                                                </a>
                                            </div>
                                            <div class="btn-group pull-right">
                                                <label>Filter</label>
                                                <button type="button" class="btn btn-toggle active">All</button>
                                                <button type="button" class="btn btn-toggle"><span class="icon icon-placeholder"></span></button>
                                                <button type="button" class="btn btn-toggle"><span class="icon icon-placeholder"></span></button>
                                                <button type="button" class="btn btn-toggle "><span class="icon icon-placeholder"></span></button>
                                            </div>
                                        </div>

                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr class="active">
                                                <td>1</td>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Larry</td>
                                                <td>the Bird</td>
                                                <td>@twitter</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="info-panel reset-maincontent-padding" data-toggle="infoPanel">
                        <div class="well-headline">
                            <span class="icon icon-info"></span>
                            Normal
                            <p>Message</p>
                        </div>
                        <p>Lorem Ipsum Dorlro askjdbn anslnknsad
                            alsjdnljnljnsd asd sjkad as das das döa d as.
                            Lorem Ipsum Dorlro askjdbn anslnknsad
                            alsjdnljnljnsd asd sjkad as das das döa d as.
                            Lorem Ipsum Dorlro askjdbn anslnknsad
                            alsjdnljnljnsd asd sjkad as das das döa d as.

                            Lorem Ipsum Dorlro askjdbn anslnknsad
                            alsjdnljnljnsd asd sjkad as das das döa d as.
                            Lorem Ipsum Dorlro askjdbn anslnknsad
                            alsjdnljnljnsd asd sjkad as das das döa d as.

                            Lorem Ipsum Dorlro askjdbn anslnknsad
                            alsjdnljnljnsd asd sjkad as das das döa d as.
                            Lorem Ipsum Dorlro askjdbn anslnknsad
                            alsjdnljnljnsd asd sjkad as das das döa d as.
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>
<!-- close outer-container -->


<!-- Modal - open=>body class="modal-open" -->
<div class="modal fade" id="modal-add-personal" tabindex="-1" role="dialog" aria-labelledby="modalEditData" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modalEditData">Objekt bearbeiten <span>Registereintrag 220</span></h4>
            </div>
            <div class="modal-body">
                <ul class="nav nav-tabs nav-wizard">
                    <li class="done">
                        <a href="#">
                            <span class="step">1</span>
                            <span>Step done</span>
                            <span class="icon icon-placeholder"></span>
                        </a>
                    </li>
                    <li class="done">
                        <a href="#">
                            <span class="step">2</span>
                            <span>Step done</span>
                            <span class="icon icon-placeholder"></span>
                        </a>
                    </li>
                    <li class="active">
                        <a href="#">
                            <span class="step">3</span>
                            <span>Step active</span>
                            <span class="icon icon-placeholder"></span>
                        </a>
                    </li>
                    <li class="disabled">
                        <a href="#">
                            <span class="step">4</span>
                            <span>Step disabled</span>
                            <span class="icon icon-placeholder"></span>
                        </a>
                    </li>
                </ul>
                <div class="wizard-content">
                    <div id="step3">
                        <form class="form-horizontal" role="form">
                            <div class="row row-df">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput1">Nachname</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput1" placeholder="Max" value="Miller">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput2">Vorname</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput2" placeholder="Muster" value="John">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput9">Geburtsname</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput9" placeholder="Muster">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput10">Früherer Nachname</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput10" placeholder="Mustermann">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group  image-upload">
                                        <label class="col-lg-6 control-label">Lichtbild</label>

                                        <div class="col-lg-2">
                                            <img class="img-responsive" alt="Benutzerbild" src="img/dummyProfileImage.png">
                                            <a class="btn btn-link btn-icon-round btn-icon-round-small">
                                                <span class="icon icon-image-file"></span>Label normal
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-df">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput3">Geschlecht</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput3" placeholder="Männlich" value="Männlich">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-lg-6 control-label" for="exampleInput4">Geburtsdatum</label>

                                        <div class="col-lg-6">
                                            <input type="date" class="form-control" id="exampleInput4" placeholder="01.12.1999" value="02.01.1949">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="col-lg-6 control-label" for="exampleInput5">Geburtsort</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput5" placeholder="Berlin" value="Frankfurt">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput6">Geburtsstaat</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput6" placeholder="Detuschland" value="Deutschland">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput11">Früherer Vorname</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput11" placeholder="Maximilian">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput12">Weiterer Name</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput12" placeholder="-"></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput13">Ordensname</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput13" placeholder="-"></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput14">Künstlername</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput14" placeholder="-"></div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput17">Label</label>

                                        <div class="col-lg-6">
                                            <input type="email" class="form-control" id="exampleInput17" placeholder="Placeholder">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput18">Label</label>

                                        <div class="col-lg-6">
                                            <input type="email" class="form-control" id="exampleInput18" placeholder="Placeholder">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput19">Label</label>

                                        <div class="col-lg-6">
                                            <input type="email" class="form-control" id="exampleInput19" placeholder="Placeholder">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput19">Label</label>

                                        <div class="col-lg-6">
                                            <input type="email" class="form-control" id="exampleInput19" placeholder="Placeholder">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-df">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput7">Eingestellt am</label>

                                        <div class="col-lg-6">
                                            <input type="date" class="form-control" id="exampleInput7" placeholder="01.01.2008" value="13.10.2013">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput8">Eingestellt durch</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput8" placeholder="Jane" value="Tina Ansbach">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput15">Aktualisierung am</label>

                                        <div class="col-lg-6">
                                            <input type="date" class="form-control" id="exampleInput15" placeholder="01.01.2010">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput16">Aktualisierung durch</label>

                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="exampleInput16" placeholder="Jane">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput20">Label</label>

                                        <div class="col-lg-6">
                                            <input type="email" class="form-control" id="exampleInput20" placeholder="Placeholder">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-6 control-label" for="exampleInput21">Label</label>

                                        <div class="col-lg-6">
                                            <input type="email" class="form-control" id="exampleInput21" placeholder="Placeholder">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-dialog btn-default pull-left" data-dismiss="modal">Ablegen</button>
                <button type="button" class="btn btn-dialog btn-default" data-dismiss="modal">Zurück</button>
                <button type="button" class="btn btn-dialog btn-default" data-dismiss="modal">Weiter</button>
                <span class="btn-separator-lg"></span>
                <button type="button" class="btn btn-dialog btn-default" data-dismiss="modal">Abbrechen</button>
            </div>
        </div>
    </div>
</div>

<script>
    //directly show the modal on this page
    $('#modal-add-personal').modal('show');
</script>

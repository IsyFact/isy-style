<div class="container" id="content">
    <div class="row row-df">

        <h3>Standard Button</h3>
        <hr>
        <p>Default control <code>< button/></code> tag including the following classes <code>.btn .btn-default</code> </p>
        <button type="button" class="btn btn-default">Normal</button>
        <button type="button" class="btn btn-default disabled" disabled="disabled">Disabled</button>
        <p>Add class <code>.btn-block</code> to stretch the button maximum size defined by the grid in this case <code>.col-lg-6</code></p>
        <div class="row row-df">
            <div class="col-lg-6">
                <button type="button" class="btn btn-default btn-block">Button stretched</button>
            </div>
        </div>
        <p>Default <code>< a/></code> tag including the following classes <code>.btn .btn-default</code> </p>
        <a class="btn btn-default">Normal</a>
        <a class="btn btn-default disabled">Disabled</a>


        <h3>Icon Button Toolbar</h3>
        <hr>
        <p>Default control <code>< button/></code> tag including the following classes <code>.btn .btn-icon</code> </p>

        <button type="button" class="btn btn-icon">
            <span class="icon icon-placeholder"></span>
            <span>Editieren</span>
        </button>

        <button type="button" class="btn btn-icon">
            <span class="icon icon-placeholder"></span>
            <span>L&ouml;schen</span>
        </button>

        <button type="button" class="btn btn-icon" disabled="disabled">
            <span class="icon icon-placeholder"></span>
            <span>Disabled</span>
        </button>


        <h3>Dropdowns</h3>
        <hr>
        <p>Default dropdown control based on a div container <code>.dropdown</code>, an anchor <code>.btn .btn-icon .dropdown-toggle</code> and the menu list <code>.dropdown-menu</code> </p>
        <div class="dropdown">
            <a id="dropdownMenu1" href="#" role="button" class="btn btn-icon dropdown-toggle" data-toggle="dropdown">
                <span class="icon icon-placeholder"></span> Dropdown
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                <li class="selected" role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">4th link</a></li>
            </ul>
        </div>

        <br>

        <div class="dropdown">
            <a id="dropdownMenu2" href="#" role="button" class="btn btn-icon dropdown-toggle"
               disabled="disabled" data-toggle="dropdown">
                <span class="icon icon-placeholder"></span> Disabled
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
                <li class="active" role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
            </ul>
        </div>

        <br>

        <div class="dropdown">
            <a id="dropdownMenu3" href="#" role="button" class="btn btn-icon-toolbar dropdown-toggle" data-toggle="dropdown">
                <span class="icon icon-placeholder"></span> Toolbar Dropdown Element
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu3">
                <li class="selected" role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">4th link</a></li>
            </ul>
        </div>


        <h4>Non-JS select fallback</h4>
        <select class="form-control">
            <option selected="selected">This is option 1</option>
            <option>This is option 2</option>
            <option>This is on other option</option>
            <option>This is option 4</option>
            <option>This is option 5</option>
        </select>



        <h3>Round Icon Button </h3>
        <hr>
        <p>Default control <code>< button/></code> tag including the following classes <code>.btn .btn-icon-round</code> </p>
            <button type="button" class="btn btn-icon-round">
                <span class="icon icon-placeholder"></span>
            </button>

            <button type="button" class="btn btn-icon-round">
                <span class="icon icon-placeholder"></span>
            </button>

            <button type="button" class="btn btn-icon-round">
                <span class="icon icon-placeholder"></span>
            </button>

            <button type="button" class="btn btn-icon-round">
                <span class="icon icon-placeholder"></span>
            </button>


        <h3> Icon Button </h3>
        <p>Default control <code>< button/></code> tag including the following classes <code>.btn .btn-icon</code></p>
        <button type="button" class="btn btn-icon"><span class="icon icon-placeholder"></span></button>
        <button type="button" class="btn btn-icon disabled" disabled><span class="icon icon-placeholder"></span></button>


        <h3>Icon Button Navigation </h3>
        <hr>
        <p>Default control <code>< a/></code> tag including the following classes <code>.btn .btn-icon-round .btn-icon-round-large</code>. Input type file uses <code>< span></code> instead of <code>< a></code></code> </p>
        <a class="btn btn-icon-round btn-icon-round-large">
            <span class="icon icon-placeholder"></span>Label normal
        </a>
        <a class="btn btn-icon-round btn-icon-round-large">
            <span class="icon icon-placeholder"></span>Label normal
        </a>
        <a class="btn btn-icon-round btn-icon-round-large disabled">
            <span class="icon icon-placeholder"></span>Label disabled
        </a>

        <h3>Icon Button Variation </h3>
        <hr>
        <h4>Small</h4>
        <p>Small icon button controls add class <code>.btn-icon-round-small</code> </p>
        <a class="btn btn-icon-round btn-icon-round-small">
            <span class="icon icon-placeholder"></span>
            Normal
        </a>
        <br>
        <span class="btn btn-icon-round btn-icon-round-small btn-file">
            <span class="icon icon-browse-folder"></span>
            Dateien Durchsuchen …
            <input type="file">
        </span>


        <h4>Large</h4>
        <p>Large icon button controls add class <code>.btn-icon-round-large</code> </p>
        <a class="btn btn-icon-round btn-icon-round-large">
            <span class="icon icon-placeholder"></span>
            Normal
        </a>
        <br>
        <span class="btn btn-icon-round btn-icon-round-large btn-file">
            <span class="icon icon-browse-folder"></span>
            Dateien Durchsuchen …
            <input type="file">
        </span>



        <h3>Toggle Button Group</h3>
        <hr>
        <p>Outer container with <code>.btn-group</code> and some buttons <code>< button /></code> tag including	class <code>.btn .btn-toggle</code> </p>
        <div class="btn-group">
            <button type="button" class="btn btn-toggle">Left</button>
            <button type="button" class="btn btn-toggle">Middle</button>
            <button type="button" class="btn btn-toggle">Right</button>
            <button type="button" class="btn btn-toggle active">Selected</button>
        </div>
        <p>Outer container with <code>.btn-group</code> and some anchor as buttons <code>< a /></code> tag including class <code>.btn .btn-toggle</code> </p>
        <div class="btn-group">
            <a class="btn btn-toggle">Left</a>
            <a class="btn btn-toggle">Middle</a>
            <a class="btn btn-toggle">Right</a>
            <a class="btn btn-toggle active">Selected</a>
        </div>


        <h3>Toggle Icon Button Group</h3>
        <hr>
        <p>Outer container with <code>.btn-group</code> and some icon buttons <code>< a /></code> tag including class <code>.btn .btn-toggle</code> </p>
        <div class="btn-group">
            <a role="button" class="btn btn-toggle"><span class="icon icon-placeholder"></span></a>
            <a role="button" class="btn btn-toggle"><span class="icon icon-placeholder"></span></a>
            <a role="button" class="btn btn-toggle active"><span class="icon icon-placeholder"></span></a>
        </div>



        <h3>Pagination</h3>
        <hr>
        <p>Unordered List <code> < ul /></code> with class <code>.pagination</code> including list items with span or anchors </p>
        <ul class="pagination">
            <li class="pagination-info">
               <span>Seite 1 v. 10</span>
            </li>
            <li><a class="icon icon-previous" href="#" role="button"></a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li class="active"><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">...</a></li>
            <li><a class="icon icon-next" href="#" role="button"></a></li>
        </ul>


        <h3>Checkbox</h3>
        <hr>
        <p>Stacked checkbox form with a div outer container class <code>.checkbox</code> containing label incl. an invisible input and span. </p>
        <form role="form">
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="option1"/>
                    <span>Default Checkbox</span>
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="option2" disabled/>
                    <span>I'm disabled</span>
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="option3" disabled checked/>
                    <span>I'm checked and disabled</span>
                </label>
            </div>
            <div class="checkbox">
                <label class="required">
                    <input type="checkbox" value="option4" required/>
                    <span>I'm required</span>
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input id="sampleIndeterminateCheckbox" type="checkbox" value="option3"/>
                    <span>Tri-state <small>(no IE8)</small></span>
                    <script>
                        //the indeterminate state of a checkbox can only be set using javascript
                        $("#sampleIndeterminateCheckbox").prop("indeterminate", true);
                    </script>
                </label>
            </div>
        </form>

        <p>Checkbox form containing all checkboxes in a row. Label has class <code>.checkbox-inline</code> containing an invisible input and span. </p>
        <form role="form">
            <label class="checkbox-inline">
                <input type="checkbox" value="option1"/>
                <span>Default Checkbox</span>
            </label>
            <label  class="checkbox-inline">
                <input type="checkbox" value="option2" disabled/>
                <span>I'm disabled</span>
            </label>
            <label  class="checkbox-inline">
                <input type="checkbox" value="option3" disabled checked/>
                <span>I'm checked and disabled</span>
            </label>
            <label  class="checkbox-inline required">
                <input type="checkbox" value="option4" required/>
                <span>I'm required</span>
            </label>
        </form>


        <h3>Radio Button</h3>
        <hr>
        <p>Stacked radio button form with a div outer container class <code>.radio</code> containing label incl. an invisible input and span. </p>
        <form role="form">
            <div class="radio">
                <label>
                    <input type="radio" name="optionsRadios" value="option1"/>
                    <span>Default radio</span>
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="optionsRadios" value="option2" disabled/>
                    <span>I'm disabled</span>
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="optionsRadios" value="option3" disabled checked/>
                    <span>I'm checked and disabled</span>
                </label>
            </div>
            <div class="radio">
                <label class="required">
                    <input type="radio" name="optionsRadios" value="option4" required/>
                    <span>I'm required</span>
                </label>
            </div>
        </form>
            <p>Checkbox form containing all checkboxes in a row. Label has class <code>.radio-inline</code> containing an invisible input and span.</p>
        <form role="form">
            <label class="radio-inline">
                <input type="radio" name="optionsRadios2" value="option1"/>
                <span>Default radio</span>
            </label>
            <label  class="radio-inline">
                <input type="radio" name="optionsRadios2" value="option2" disabled/>
                <span>I'm disabled</span>
            </label>
            <label  class="radio-inline">
                <input type="radio" name="optionsRadios2" value="option3" disabled checked/>
                <span>I'm checked and disabled</span>
            </label>
            <label  class="radio-inline required">
                <input type="radio" name="optionsRadios2" value="option4" required/>
                <span>I'm required</span>
            </label>
        </form>


        <h3>Text link</h3>
        <hr>
        <p>Default Button Text link <code>.btn .btn-link</code> incl. an arrow icon <code>.icon .icon-NAME</code></p>

        <a class="btn btn-link"><span class="icon icon-placeholder"></span> Link Item</a>
        <p>Default Text link <code>< a/></code> with no additional classes</p>
        <p>This is a dummy Text to show you a <a href="#">Text Link in a paragraph or in a list</a> which is embedded in this senseless Text. Lorem Ipsen delorum bla Lorem Ipsen delorum blaLorem Ipsen delorum bla. Lorem Ipsen delorum bla Lorem Ipsen delorum blaLorem Ipsen delorum bla. Lorem Ipsen delorum bla Lorem Ipsen delorum blaLorem Ipsen delorum bla. Lorem Ipsen delorum bla Lorem Ipsen delorum blaLorem Ipsen delorum bla.
        </p>



        <h3>Input Field</h3>
        <hr>
        <p>A horizontal form <code>.form-horizontal</code>  with label and input fields in different states based on a simple grid. <code>.form-group</code> behaves as grid rows.</p>

        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label for="inputName" class="col-lg-2 control-label">Nachname</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="inputName" placeholder="z.B. Hansi Müller">
            </div>
          </div>
          <div class="form-group">
            <label for="inputName" class="col-lg-2 control-label">Nachname</label>
            <div class="col-lg-10">
                <input type="text" class="form-control readonly" readonly="readonly" value="Readonly">
            </div>
          </div>
          <div class="form-group">
            <label for="inputName" class="col-lg-2 control-label">Nachname</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" disabled="disabled" placeholder="Disabled">
            </div>
          </div>
          <div class="form-group has-error">
            <label for="inputName" class="col-lg-2 control-label">Nachname</label>
            <div class="col-lg-10">
                <input type="text" class="form-control required" required="required" placeholder="Required">
            </div>
          </div>

          <div class="form-group has-error">
            <label for="inputName" class="col-lg-2 control-label">Nachname</label>
            <div class="col-lg-10">
                <input type="text" class="form-control invalid" invalid="invalid" placeholder="Invalid text entered">
                <span class="form-control-feedback"><span class="icon icon-placeholder"></span></span>
            </div>
          </div>
          <div class="form-group">
            <label for="inputName" class="col-lg-2 control-label">Nachname</label>
            <div class="col-lg-10">
                <div class="input-group">
                    <input type="text" class="form-control text-right" placeholder="z.B. 35975">
                    <span class="input-group-addon">.00</span>
                </div>
            </div>
          </div>
          <div class="form-group">
            <label for="inputName" class="col-lg-2 control-label mandatory">Behördenkennz.</label>
            <div class="col-lg-10">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="z.B. 595d00">
                    <a class="btn btn-icon input-group-addon"><span class="icon icon-placeholder"></span></a>
                </div>
            </div>
          </div>
        </form>



        <h3>Text Area/Block</h3>
        <hr>
        <p>A simple text area <code>&lt;textarea&gt;</code> with class <code>.form-control</code> embedded in a container <code>.form-group</code></p>
        <div class="form-group">
            <textarea class="form-control">This is a very nice and short text....</textarea>
        </div>


        <h3>Inner Tabs</h3>
        <hr>
        <p>A simple unordered list <code>&lt;ul&gt; &lt;li&gt;</code> with class <code>.nav .nav-tabs</code> </p>
        <ul class="nav nav-tabs">
            <li>
                <a href="#">Home</a>
            </li>
            <li class="active">
                <a href="#">Profile</a>
            </li>
            <li>
                <a href="#">Messages</a>
            </li>
        </ul>


        <h3>Progress bar</h3>
        <hr>
        <p>A simple progress bar <code>&lt;div&gt;</code> with class <code>.progress-bar</code> embedded in a container <code>.progress</code></p>
        <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                 style="width: 60%;">
                <span class="sr-only">60% Complete</span>
            </div>
        </div>


        <h3>Toolbar</h3>
        <hr>
        <p>Container <code>&lt;div .btn-toolbar&gt;</code> with class <code>.btn-group</code> </p>

        <div class="btn-toolbar" role="toolbar">
            <div class="btn-group">
                <a class="btn btn-icon">
                    <span class="icon icon-placeholder"></span> L&ouml;schen
                </a>
                <a class="btn btn-icon">
                    <span class="icon icon-placeholder"></span> Exportieren
                </a>
            </div>
             <div class="btn-group">
                <a class="btn btn-icon">
                    <span class="icon icon-placeholder"></span> Drucken
                </a>
                <a class="btn btn-icon">
                    <span class="icon icon-placeholder"></span> Aktualisieren
                </a>
             </div>
             <div class="btn-group pull-right">
                <label>Filter</label>
                <button type="button" class="btn btn-toggle active">All</button>
                <button type="button" class="btn btn-toggle"><span class="icon icon-placeholder"></span></button>
                <button type="button" class="btn btn-toggle"><span class="icon icon-placeholder"></span></button>
                <button type="button" class="btn btn-toggle"><span class="icon icon-placeholder"></span></button>
            </div>
        </div>


        <h3>DatePicker / TimePicker</h3>
        <hr>
        <p>Container <code>&lt;div .btn-toolbar&gt; </code> with class <code>.btn-group</code> </p>
        <p>This uses additional jquery plugins: https://github.com/eternicode/bootstrap-datepicker http://jdewit.github.io/bootstrap-timepicker http://digitalbush.com/projects/masked-input-plugin</p>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="birthdate" class="col-lg-2 control-label mandatory">Geburtsdatum</label>
                <div class="col-lg-2">
                    <div id="datepicker" class="input-group date datepicker-orient-bottom" data-date="27.05.2014" data-date-format="dd.mm.yyyy">
                        <input id="birthdate" type="text" class="form-control" placeholder="z.B. 21.09.1981">
                        <a id="calButton" class="btn btn-icon input-group-addon"><span class="icon icon-calendar "></span></a>
                    </div>
                </div>
            </div>
        </form>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="birthtime" class="col-lg-2 control-label mandatory">Uhrzeit</label>
                <div class="col-lg-2">
                    <div id="timepicker" class="input-group time picker-orient-bottom input-append" data-time="14:42" data-time-format="hh:mm">
                        <input id="birthtime" type="text" class="form-control" placeholder="z.B. 15:20">
                        <a id="timeButton" class="btn btn-icon input-group-addon add-on"><span class="icon icon-watch"></span></a>
                    </div>
                </div>
            </div>
        </form>




        <h3>Char Picker</h3>
        <hr>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="charpicker" class="col-lg-2 control-label mandatory">Buchstaben Picker</label>
                <div class="col-lg-2">
                    <div id="charpicker" class="input-group char picker-orient-bottom">
                        <input id="char" type="text" class="form-control" placeholder="z.B. ABC">
                        <a id="charButton" class="btn btn-icon input-group-addon"><span class="icon icon-char"></span></a>
                    </div>
                </div>
            </div>
        </form>


        <div class="picker charpicker dropdown-menu picker-dropdown picker-orient-left picker-orient-top" style="display: inline-block; float: none; position: relative">
            <div class="charpicker-chars">
                <table class=" table-condensed">
                    <tr>
                        <td>A</td>
                        <td>B</td>
                        <td>C</td>
                        <td>D</td>
                        <td class="active">E</td>
                        <td>F</td>
                        <td>G</td>
                    </tr>
                    <tr>
                        <td>H</td>
                        <td>I</td>
                        <td>J</td>
                        <td class="disabled">K</td>
                        <td>L</td>
                        <td>M</td>
                        <td>N</td>
                    </tr>
                    <tr>
                        <td>O</td>
                        <td>P</td>
                        <td>Q</td>
                        <td>R</td>
                        <td>S</td>
                        <td>T</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td>V</td>
                        <td>W</td>
                        <td>X</td>
                        <td>Y</td>
                        <td>Z</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="picker charpicker dropdown-menu picker-dropdown picker-orient-left picker-orient-bottom" style="display: inline-block; float: none; position: relative; margin-left: 30px;">
            <div class="charpicker-chars">
                <table class=" table-condensed">
                    <tr>
                        <td>A</td>
                        <td>B</td>
                        <td>C</td>
                        <td>D</td>
                        <td class="active">E</td>
                        <td>F</td>
                        <td>G</td>
                    </tr>
                    <tr>
                        <td>H</td>
                        <td>I</td>
                        <td>J</td>
                        <td class="disabled">K</td>
                        <td>L</td>
                        <td>M</td>
                        <td>N</td>
                    </tr>
                    <tr>
                        <td>O</td>
                        <td>P</td>
                        <td>Q</td>
                        <td>R</td>
                        <td>S</td>
                        <td>T</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td>V</td>
                        <td>W</td>
                        <td>X</td>
                        <td>Y</td>
                        <td>Z</td>
                    </tr>
                </table>
            </div>
        </div>


        <h3>List Picker</h3>
        <hr>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="listpicker" class="col-lg-2 control-label mandatory">List Picker</label>
                <div class="col-lg-2">
                    <div id="listpicker" class="input-group list picker-orient-bottom">
                        <input id="list" type="text" class="form-control" placeholder="z.B. ...">
                        <a id="listButton" class="btn btn-icon input-group-addon"><span class="icon icon-list-2"></span></a>
                    </div>
                </div>
            </div>
        </form>


        <div class="picker listpicker dropdown-menu picker-dropdown picker-orient-left picker-orient-top" style="display: inline-block; float: none; position: relative">
            <div class="listpicker-list">
                <div class="listpicker-filter"><input class="form-control" type="text" placeholder="Filter"></div>
                <table class="table ">
                    <thead>
                        <tr>
                            <th>Vorname</th>
                            <th>Nachname</th>
                            <th>User</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr class="active">
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr class="">
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                        <tr class="">
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                        <tr class="">
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="picker listpicker dropdown-menu picker-dropdown picker-orient-left picker-orient-bottom" style="display: inline-block; float: none; position: relative; margin-left: 30px;">
            <div class="listpicker-list">
                <div class="listpicker-filter"><input class="form-control" type="text" placeholder="Filter"></div>
                <table class="table ">
                    <thead>
                        <tr>
                            <th>Vorname</th>
                            <th>Nachname</th>
                            <th>User</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr class="active">
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr class="">
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                        <tr class="">
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                        <tr class="">
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="page-header">
            <h3>Spinner</h3>
            Spinner with GIF with white background
        </div>
        <div class="spinner"></div>


        <div class="page-header">
            <h3>Tooltip</h3>
        </div>
        <div class="form-group">
            <div class="popover demo">
                <div class="arrow"></div>
                <h3 class="popover-title">Popover Title</h3>
                <div class="popover-content">
                    Content of the popover. Message.
                </div>
            </div>
        </div>
        <div class="form-group">
            <a class="btn btn-link es-popover" data-toggle="popover" data-title="Popover Title" data-content="Content of the popover" data-trigger="hover" data-delay="100">
                <span class="icon icon-placeholder"></span> Popover Example (with title)
            </a>
        </div>
        <div class="form-group">
            <a class="btn btn-link es-tooltip" data-toggle="tooltip" data-title="Tooltip Text" data-trigger="hover" data-delay="100">
                <span class="icon icon-placeholder"></span> Tooltip Example
            </a>
        </div>


        <div class="page-header">
            <h3>Table - Datagrid Typ 1 with inline details</h3>
        </div>
        <div class="form-group">
            <table class="table ">
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
                <tr class="details-preview">
                    <td colspan="5">
                        <div class="row row-df">
                            <div class="col col-lg-4">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                            <div class="col col-lg-4 col-center">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                            <div class="col col-lg-4 col-last">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                        </div>
                        <div class="row row-df">
                            <div class="col col-lg-4">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                            <div class="col col-lg-4 col-center">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                            <div class="col col-lg-4 col-last">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                        </div>
                    </td>
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


        <div class="page-header">
            <h3>Table - Datagrid with Master Detail</h3>
        </div>
        <div class="form-group master-detail">
            <table class="table master-detail-master">
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
            <div class="master-detail-detail">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title clearfix">
                                <a data-toggle="collapse" href="#collapseOne">
                                    <span class="icon"></span> Details</a>

                                <div class="btn-toolbar">
                                    <div class="btn-group">
                                    </div>
                                </div>
                                <div class="panel-groupline-container">
                                    <span class="panel-groupline"></span>
                                </div>
                            </div>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">

                                <form class="form-horizontal" role="form">
                                    <div class="row row-df">
                                        <div class="col col-lg-4">
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput1">Nachname</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput1" placeholder="Max" value="Thornton" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix spacer">
                                                <label class="col-lg-6 control-label" for="exampleInput2">Vorname</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput2" placeholder="Muster" value="Jacob" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput3">Geschlecht</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput3" placeholder="Männlich" value="Männlich" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput4">Geburtsdatum</label>

                                                <div class="col-lg-6">
                                                    <input type="date" class="form-control readonly" id="exampleInput4" placeholder="01.12.1999" value="02.01.1949" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput5">Geburtsort</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput5" placeholder="Berlin" value="Frankfurt" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix spacer">
                                                <label class="col-lg-6 control-label" for="exampleInput6">Geburtsstaat</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput6" placeholder="Detuschland" value="Deutschland" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput7">Eingestellt am</label>

                                                <div class="col-lg-6">
                                                    <input type="date" class="form-control readonly" id="exampleInput7" placeholder="01.01.2008" value="13.10.2013" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput8">Eingestellt durch</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput8" placeholder="Jane" value="Tina Ansbach" readonly="readonly">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col col-lg-4 col-center">
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput9">Geburtsname</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput9" placeholder="Muster" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix spacer">
                                                <label class="col-lg-6 control-label" for="exampleInput10">Früherer Nachname</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput10" placeholder="Mustermann" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput11">Früherer Vorname</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput11" placeholder="Maximilian" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput12">Weiterer Name</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput12" placeholder="-" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput13">Ordensname</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput13" placeholder="-" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix spacer">
                                                <label class="col-lg-6 control-label" for="exampleInput14">Künstlername</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput14" placeholder="-" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput15">Aktualisierung am</label>

                                                <div class="col-lg-6">
                                                    <input type="date" class="form-control readonly" id="exampleInput15" placeholder="01.01.2010" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput16">Aktualisierung durch</label>

                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control readonly" id="exampleInput16" placeholder="Jane" readonly="readonly">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col col-lg-4 col-last">
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput17">Label</label>

                                                <div class="col-lg-6">
                                                    <input type="email" class="form-control readonly" id="exampleInput17" placeholder="Placeholder" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput18">Label</label>

                                                <div class="col-lg-6">
                                                    <input type="email" class="form-control readonly" id="exampleInput18" placeholder="Placeholder" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix spacer">
                                                <label class="col-lg-6 control-label" for="exampleInput19">Label</label>

                                                <div class="col-lg-6">
                                                    <input type="email" class="form-control readonly" id="exampleInput19" placeholder="Placeholder" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput20">Label</label>

                                                <div class="col-lg-6">
                                                    <input type="email" class="form-control readonly" id="exampleInput20" placeholder="Placeholder" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group col-fix">
                                                <label class="col-lg-6 control-label" for="exampleInput21">Label</label>

                                                <div class="col-lg-6">
                                                    <input type="email" class="form-control readonly" id="exampleInput21" placeholder="Placeholder" readonly="readonly">
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


        <div class="page-header">
            <h3>Table - mit optionaler Filter Row + Loading (Pagination)</h3>
        </div>
        <div class="form-group">

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>
                            <span>#</span>
                            <input class="form-control table-filter" type="text"/>
                        </th>
                        <th>
                            <span>First Name</span>
                            <input class="form-control table-filter" type="text"/>
                        </th>
                        <th>
                            <span>Last Names</span>
                            <input class="form-control table-filter" type="text" disabled="disabled"/>
                        </th>
                        <th>
                            <span>Username</span>
                            <div class="dropdown">
                                <a data-toggle="dropdown" class="btn btn-icon dropdown-toggle" role="button" href="#" id="dropdownMenu1">Select
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" tabindex="-1" role="menuitem">Option</a></li>
                                </ul>
                            </div>
                        </th>
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
            <div class="load-more btn-toolbar" role="toolbar">
                <ul class="pagination">
                    <li class="pagination-info">
                        <span>Seite 1 v. 10</span>
                    </li>
                    <li><a href="#prev"><span class="icon icon-previous"></span></a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li class="active"><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">...</a></li>
                    <li><a href="#next"><span class="icon icon-next"></span></a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>


        <div class="page-header">
            <h3>Table - Multiselect + Sort + Loading (Button)</h3>
        </div>
        <div class="form-group">
            <table class="table table-hover table-selectable">
                <thead>
                    <tr>
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" />
                                    <span></span>
                                </label>
                            </div>
                        </th>
                        <th class="sortable sort-down sorted">Reg.Nr.</th>
                        <th class="sortable sort-up">First Name</th>
                        <th class="sortable sort-up">Last Name</th>
                        <th class="sortable sort-up">Username</th>
                        <th>Icons</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="active">
                        <td>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="row-1" checked />
                                    <span></span>
                                </label>
                            </div>
                        </td>
                        <td><a class="table-link">152</a></td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-placeholder"></span>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="row-2"/>
                                    <span></span>
                                </label>
                            </div>
                        </td>
                        <td><a class="table-link">684</a></td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                        <td>
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-placeholder"></span>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="row-3"/>
                                    <span></span>
                                </label>
                            </div>
                        </td>
                        <td><a class="table-link">894</a></td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                        <td>
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-placeholder"></span>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="load-more btn-toolbar" role="toolbar">
                <button type="button" class="btn btn-default btn-icon">
                    <span class="icon icon-more"></span> MEHR ZEIGEN
                </button>
            </div>
        </div>




        <div class="page-header">
            <h3>Browse & Collect / Normal List (interactive)</h3>
        </div>
        <div class="browse-collect">
            <div class="browse-list list-left">
                <div class="list-group-header">
                    <p>Verfügbar</p>
                    <div class="form-group">
                        <div class="dropdown">
                            <a id="dropdownMenu1" href="#" role="button" class="btn btn-icon dropdown-toggle" data-toggle="dropdown">
                                Option
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                <li class="selected" role="presentation"><a role="menuitem" tabindex="-1" href="#">Option</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">4th link</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <ul class="list-group">
                    <li class="list-group-item active">Cras justo odio</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                </ul>
            </div>
            <div class="collect-buttons">
                <button class="btn btn-icon" type="button"><span class="icon icon-next"></span></button>
                <button class="btn btn-icon" type="button"><span class="icon icon-fast-forward"></span></button>
                <button class="btn btn-icon" type="button"><span class="icon icon-rewind"></span></button>
                <button class="btn btn-icon" type="button"><span class="icon icon-previous"></span></button>
            </div>
            <div class="browse-list list-right">
                <div class="list-group-header">
                    <p>Zugewiesen</p>
                    <div class="form-group">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <ul class="list-group">
                    <li class="list-group-item active">Justo crassiodio</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                </ul>
            </div>
        </div>

        <h3>Non-JS</h3>
        <form class="browse-collect" method="post" action="http://yourbackend/browse-collect-handler/from/this-form">
            <div class="browse-list list-left">
                <div class="list-group-header">
                    <p>Verfügbar</p>
                    <div class="form-group">
                        <select class="form-control">
                            <option value="1">Option</option>
                            <option value="2">Option</option>
                            <option value="3">Option</option>
                            <option value="4">Option</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <select multiple class="form-control list-group">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
            <div class="collect-buttons">
                <button name="addOne" type="submit" class="btn">
                    <span class="icon icon-next"></span>
                </button>
                <button name="addAll" type="submit" class="btn">
                    <span class="icon icon-fast-forward"></span>
                </button>
                <button name="removeAll" type="submit" class="btn">
                    <span class="icon icon-rewind"></span>
                </button>
                <button name="removeOne" type="submit" class="btn">
                    <span class="icon icon-previous"></span>
                </button>
            </div>
            <div class="browse-list list-right">
                <div class="list-group-header">
                    <p>Zugewiesen</p>
                    <div class="form-group">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <select multiple class="form-control list-group">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
        </form>


        <div class="page-header">
            <h3>Normal List (read only)</h3>
        </div>
        <div class="row row-df">
            <div class="col-lg-12">
                <ul class="list-group read-only">
                    <li class="list-group-item active">
                        Cras justo odio
                    </li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                </ul>
            </div>
        </div>


        <h3>Panel Groups</h3>
        <hr>
        <p>Based on bootstrap panel <code>&lt;div .panel-group&gt;</code> and structuring container and classes <code>.panel .panel-default</code>. Change a static panel to an interactive one by adding property <code>data-toggle="collapse"</code> to the panel-title anchor </p>
        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title clearfix">
                        <a data-toggle="collapse" href="#collapse">
                            <span class="icon"></span> Collapsible Panel Group</a>

                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                                <button type="button" class="btn btn-icon-round ">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                                <button type="button" class="btn btn-icon-round ">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                            </div>
                        </div>
                        <div class="panel-groupline-container">
                            <span class="panel-groupline"></span>
                        </div>
                    </div>
                </div>
                <div id="collapse" class="panel-collapse collapse in">
                    <div class="panel-body">

                        <p class="clearfix">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                            richardson ad squid. Three wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
                            laborum eiusmod. Brunch two wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee
                            nulla raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore
                            sustainable VHS.</p>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <a data-toggle="collapse" data-parent="#collapseOne" href="#collapseSub">
                                        <span class="icon"></span> Collapsible Sub Panel Group
                                    </a>

                                    <div class="btn-toolbar">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-icon-round">
                                                <span class="icon icon-placeholder"></span>
                                            </button>
                                            <button type="button" class="btn btn-icon-round ">
                                                <span class="icon icon-placeholder"></span>
                                            </button>
                                            <button type="button" class="btn btn-icon-round ">
                                                <span class="icon icon-placeholder"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="panel-groupline-container">
                                        <span class="panel-groupline"></span>
                                    </div>
                                </div>
                            </div>
                            <div id="collapseSub" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>Three wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
                                        laborum eiusmod.  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson
                                        ad squid.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title clearfix">
                        <span>Panel Group</span>
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <button type="button" class="btn btn-icon-round">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                                <button type="button" class="btn btn-icon-round ">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                                <button type="button" class="btn btn-icon-round ">
                                    <span class="icon icon-placeholder"></span>
                                </button>
                            </div>
                        </div>
                        <div class="panel-groupline-container">
                            <span class="panel-groupline"></span>
                        </div>
                    </div>
                </div>
                <div class="panel-body">

                    <p class="clearfix">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                        richardson ad squid.</p>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <span>Sub Panel Group</span>
                                <div class="btn-toolbar">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-icon-round">
                                            <span class="icon icon-placeholder"></span>
                                        </button>
                                        <button type="button" class="btn btn-icon-round ">
                                            <span class="icon icon-placeholder"></span>
                                        </button>
                                        <button type="button" class="btn btn-icon-round ">
                                            <span class="icon icon-placeholder"></span>
                                        </button>
                                    </div>
                                </div>
                                <div class="panel-groupline-container">
                                    <span class="panel-groupline"></span>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                                squid.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="page-header">
            <h3>Form Ausgabelayout vertikal</h3>
        </div>
        <div class="accordion sample-form-layout">
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a href="#collapseFour" data-parent="sample-form-layout" data-toggle="collapse" class="accordion-toggle">
                        <span class="icon arrow-down-icon"></span>Collapsible Group Item 1
                    </a>
                    <button type="button" class="btn btn-icon-round ">
                        <span class="icon icon-placeholder"></span>
                    </button>

                    <span class="accordion-line-container">
                        <span class="accordion-line"></span>
                    </span>
                </div>
                <div class="accordion-body collapse in" id="collapseFour">
                    <div class="accordion-inner">
                        <div class="row row-df">
                            <div class="col col-lg-4">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value Anim pariatur cliche</span>
                            </div>
                            <div class="col col-lg-4 col-center">
                                <span class="col-lg-3 control-label">Long Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                            <div class="col col-lg-4 col-last">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                        </div>
                        <div class="row row-df">
                            <div class="col col-lg-4">
                                <span class="col-lg-3 control-label">Long Label</span>
                                <span class="col-lg-9">Value Anim pariatur cliche</span>
                            </div>
                            <div class="col col-lg-4 col-center">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value pariatur cliche</span>
                            </div>
                            <div class="col col-lg-4 col-last">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                        </div>
                        <div class="row row-df">
                            <div class="col col-lg-4">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                            <div class="col col-lg-4 col-center">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                            <div class="col col-lg-4 col-last">
                                <span class="col-lg-3 control-label">Label</span>
                                <span class="col-lg-9">Value</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="page-header">
            <h3>Modals</h3>
            <code>Modals are at the end of the body</code><br>

            <button class="btn" data-toggle="modal" data-target="#myDemoModal">
                Launch demo modal
            </button>
            <br>
            <button class="btn" data-toggle="modal" data-target="#myDemoModalWizard">
                Launch demo modal with wizard
            </button>




            <h4>Modal Design</h4>

            <!-- Modal -->
            <div class="modal fade in" id="modalEditData1" tabindex="-1" role="dialog" aria-labelledby="modalEditData" aria-hidden="true" style="position: relative; z-index: 1;">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header modal-yellow">
                            <h4 class="modal-title" id="modalEditData">Objekt bearbeiten <span>Registereintrag 220</span> </h4>
                        </div>
                        <div class="modal-body">
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
                                            <label class="col-lg-6 control-label">Lichtbild </label>

                                            <div class="col-lg-2">
                                                <img class="img-responsive" alt="Benutzerbild" src="img/dummyProfileImage.png">
                                                <span class="btn btn-icon-round btn-icon-round-small btn-file">
                                                    <span class="icon icon-browse-folder"></span>
                                                    Durchsuchen …
                                                    <input type="file">
                                                </span>
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
                        <div class="modal-footer">
                            <button type="button" class="btn btn-dialog btn-default" data-dismiss="modal">Speichern</button>
                            <button type="button" class="btn btn-dialog btn-default" data-dismiss="modal">Abbrechen</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <h3>Alerts</h3>
        <hr>
        <p>Container <code>&lt;div .alert&gt;</code> with alert class <code>.alert-info</code> or <code>.alert-warning</code> or <code>.alert-success</code>> </p>

        <div class="alert alert-info" role="alert">
            <span class="icon icon-placeholder"></span><strong>Info</strong> This alert needs your attention, but it's not super important.
        </div>
        <div class="alert alert-warning" role="alert">
            <span class="icon icon-placeholder"></span><strong>Warning</strong> Best check yo self, you're not looking too good.
        </div>
        <div class="alert alert-danger" role="alert">
            <span class="icon icon-placeholder"></span><strong>Error</strong> Hard Error
        </div>
        <div class="alert alert-success" role="alert">
            <span class="icon icon-placeholder"></span><strong>Success</strong> You successfully read this important alert message.
        </div>



        <h3>Subnavigation</h3>
        <hr>
        <p>Container <code>&lt;div .subnav&gt;</code> with an unordered list <code>&lt;ul .nav .nav-pills .nav-stacked&gt;</code>. Group header will declared as <code>&lt;li .group-header&gt;</code></p>
        <div class="row row-df">
            <div class="col-lg-3">
                <div class="subnav">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="group-header"><h5>SBH–Beteiligung P73II</h5></li>
                        <li class="active"><a href="#">Arbeitsvorrat</a></li>
                        <li><a href="#">Vorgangssuche</a></li>
                        <li class="group-header">Letzte Vorgänge</li>
                        <li><a href="#">1234563421ADD Z</a></li>
                        <li><a href="#">Object A</a></li>
                        <li><a href="#">Object B</a></li>
                        <li><a href="#">Object C</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="page-header">
            <h3>Editable Row</h3>
        </div>
        <form role="form">
            <table class="table editable-row">
                <thead>
                    <tr>
                        <th>Ausweisart</th>
                        <th>Ausweisnummer</th>
                        <th>Ausweisdatum</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. Personalausweis" value="Personalausweis">
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. 55481526466" value="16813516146">
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. 15.06.2002" value="24.11.2010">
                                </div>
                            </div>
                        </td>
                        <td class="edit-buttons">
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-plus"></span>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. Personalausweis" value="Reisepass">
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. 55481526466" value="46684484684">
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. 15.06.2002" value="30.04.2014">
                                </div>
                            </div>
                        </td>
                        <td class="edit-buttons">
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-minus"></span>
                            </button>
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-plus"></span>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. Personalausweis">
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. 55481526466">
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputName" placeholder="z.B. 15.06.2002">
                                </div>
                            </div>
                        </td>
                        <td class="edit-buttons">
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-minus"></span>
                            </button>
                            <button type="button" class="btn btn-icon-round">
                                <span class="icon icon-plus"></span>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>


        <div class="page-header">
            <h3>Wizard Steps</h3>
        </div>
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


        <div class="page-header">
            <h3>Info Area</h3>
        </div>
        <div class="form-group">
            <div class="well well-info">
                <div class="well-headline">
                    <span class="icon icon-placeholder"></span>
                    Normal
                    <p>Message</p>
                </div>
                <p>Lorem Ipsum Dolor Message.</p>
            </div>
        </div>


        <div class="page-header">
            <h3>Dashboard Widgets</h3>
        </div>
        <div class="row row-df">
            <div class="col-lg-6">
                <div class="panel panel-transparent">
                    <div class="panel-heading">Wiedervorlagen
                        <a class="btn btn-link btn-more">mehr <span class="icon icon-chevron-down"></span></a>
                    </div>
                    <ul class="panel-body">
                        <li>
                            <a class="btn btn-link">Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link">Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link">Link Item</a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="col-lg-6">
                <div class="panel panel-orange">
                    <div class="panel-heading"><span class="icon icon-chevron-right"></span> APPLICATION NAME</div>
                    <ul class="panel-body">
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row row-df">

            <div class="col-lg-6">
                <div class="panel panel-dark-blue">
                    <div class="panel-heading"><span class="icon icon-chevron-right"></span> APPLICATION NAME</div>
                    <ul class="panel-body">
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="panel panel-orange">
                    <div class="panel-heading"><span class="icon icon-chevron-right"></span> APPLICATION NAME</div>
                    <ul class="panel-body">
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                        <li>
                            <a class="btn btn-link"><span class="icon icon-chevron-right"></span> Link Item</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <h3>Icons</h3>
        <div class="icon icon-placeholder"> Placeholder</div>
        <div class="icon icon-cancel"> Cancel</div>
        <div class="icon icon-pickup"> Pickup</div>
        <div class="icon icon-dnd"> Dnd</div>
        <div class="icon icon-logout"> Logout</div>
        <div class="icon icon-unlock"> Unlock</div>
        <div class="icon icon-refresh"> Refresh</div>
        <div class="icon icon-checkmark"> Checkmark</div>
        <div class="icon icon-ok"> OK</div>
        <div class="icon icon-attach"> Attach</div>
        <div class="icon icon-login"> Login</div>
        <div class="icon icon-reply"> Reply</div>
        <div class="icon icon-visible"> Visible</div>
        <div class="icon icon-archive"> Archive</div>
        <div class="icon icon-return"> Return</div>
        <div class="icon icon-edit"> Edit</div>
        <div class="icon icon-image-file"> Image File</div>
        <div class="icon icon-download"> Download</div>
        <div class="icon icon-show-property"> Property</div>
        <div class="icon icon-view-details"> View Details</div>
        <div class="icon icon-send-file"> Send File</div>
        <div class="icon icon-add-file"> Add File</div>
        <div class="icon icon-purchase-order"> Purchase Order</div>
        <div class="icon icon-print"> Print</div>
        <div class="icon icon-search"> Search</div>
        <div class="icon icon-buy"> Buy</div>
        <div class="icon icon-cursor"> Cursor</div>
        <div class="icon icon-minus"> Minus</div>
        <div class="icon icon-checked-checkbox"> Checked Checkbox</div>
        <div class="icon icon-plus"> Plus</div>
        <div class="icon icon-upload"> Upload</div>
        <div class="icon icon-error"> Error</div>
        <div class="icon icon-delete"> Delete</div>
        <div class="icon icon-checked-user"> Checked User</div>
        <div class="icon icon-filtered-filter"> Filtered Filter</div>
        <div class="icon icon-erase"> Erase</div>
        <div class="icon icon-low-importance"> Low Importance</div>
        <div class="icon icon-trash"> Trash</div>
        <div class="icon icon-new-post"> New Post</div>
        <div class="icon icon-pin"> Pin</div>
        <div class="icon icon-scanner"> Scanner</div>
        <div class="icon icon-folder"> Folder</div>
        <div class="icon icon-save"> Save</div>
        <div class="icon icon-list"> List</div>
        <div class="icon icon-ball-point-pen"> Ball Point Pen</div>
        <div class="icon icon-network"> Network</div>
        <div class="icon icon-previous"> Previous</div>
        <div class="icon icon-next"> Next</div>
        <div class="icon icon-repeat"> Repeat</div>
        <div class="icon icon-star"> Star</div>
        <div class="icon icon-left-round"> Left Round</div>
        <div class="icon icon-redo"> Redo</div>
        <div class="icon icon-manager"> Manager</div>
        <div class="icon icon-map-marker"> Map Marker</div>
        <div class="icon icon-info"> Info</div>
        <div class="icon icon-user"> User</div>
        <div class="icon icon-message-outline"> Message Outline</div>
        <div class="icon icon-engineering"> Engineering</div>
        <div class="icon icon-appointment-reminders"> Appointment Reminders</div>
        <div class="icon icon-calendar"> Calendar</div>
        <div class="icon icon-watch"> Watch</div>
        <div class="icon icon-external_link"> External Link</div>
        <div class="icon icon-outline"> Outline</div>
        <div class="icon icon-more"> More</div>
        <div class="icon icon-char"> Char Picker</div>
        <div class="icon icon-list-2"> List Picker</div>
        <div class="icon icon-chevron-right"> Chevron Right</div>
        <div class="icon icon-chevron-left"> Chevron Left</div>
        <div class="icon icon-chevron-up"> Chevron Up</div>
        <div class="icon icon-chevron-down"> Chevron Down</div>

    </div>
</div>



<div class="modal fade" id="myDemoModal" tabindex="-1" role="dialog" aria-labelledby="modalEditData" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modalEditData">Objekt bearbeiten <span>Registereintrag 220</span> </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="row row-df">


                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-dialog btn-default" data-dismiss="modal">Speichern</button>
                <button type="button" class="btn btn-dialog btn-default" data-dismiss="modal">Abbrechen</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myDemoModalWizard" tabindex="-1" role="dialog" aria-labelledby="modalEditData" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modalEditData">Wizard <span>Step x</span> </h4>
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
                    <div id="step1">
                        ...
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


</div> <!-- close outer-container -->
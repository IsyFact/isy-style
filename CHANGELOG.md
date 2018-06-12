# v4.0.1
- `IFS-192`: Checkboxes, Radiobuttons etc. nicht korrekt dargestellt

# v4.0.0
- `IFS-73`: Integration der Style-Änderungen von Ergosign. ACHTUNG: Diese Styles sind zum Teil inkompatibel zur isy-style-3.0.0
- `IFS-74`: isy-style aus Build der isy-web herausgelöst. Die isy-style ist als zusätzliche Maven-Depedency einzubinden. 
- `IFS-107`: Anpassung von Farben über Konfiguration möglich (siehe README.md)

# v3.0.0
- Umstellung auf fontawesome Icons
ACHTUNG: Die fonts liegen nun auf toplevel in `/fonts` statt `/css/fonts`.
Die Referenzen zeigen ebenfalls dorthin - z.B. `/css/styles.css` hat folgenden Eintrag `url(../fonts/font-awesome.min.css)`.
Dies muss bei der Umstellung beachtet werden.
Neue Icons können unter http://fontawesome.io/icons/ gesucht und ausgewählt werden.
Ein Mapping der alten Iconfont auf fontawesome-Icons liegt unter `legacy-icon-styles.less` bereit, soll aber nur für eine Übergangszeit genutzt werden ("deprecated").

# v2.3.0
- `IFS-61`: Darstellung sortierbarer Spalten überarbeitet.

# v2.2.3
- Modernisierung des Builds
- Support für Release als npm Paket
- Referenzen auf nicht existierende Bilder entfernt
- Nicht verwendete Templates entfernt

# v2.2.2
- Header-Bereich: Linkes und rechtes Logo und der Text, der neben dem rechten Logo stehen soll, sind nun konfigurierbar.

## Hinweise zum Upgrade
- Anwendungen müssen nun die Konfigurationsparameter 'gui.header.logo.rechts.pfad', 'gui.header.logo.links.pfad' und 'gui.header.text.logo.rechts' setzen, damit die Logos bzw. der Text angezeigt werden.

# v2.2.1
- Fix für das Four-Eyes-Icon

# v2.2.0
- `IFS-17`: Umbenennung der Artifact-ID und Group-ID

# v2.1.0
## Bugfixes
- `IFS-24`: Toolbar im IE "überdeckt" Maskenelemente.
- `RF-123`: Fix für fehlerhaftes Tabellen-Layout bei langen Texten in Tabellenspalte.

## Neuerungen
- `IFS-29`:
	* Deaktivierte Eingabefelder haben einen entsprechenden Cursur.
    * Einführung von h-Tags für Überschriften von Panels.
    * formCurrencyInput hat neuen, optionalen Parameter zum Ausrichten des Texts.

# v2.0.4
## Bugfixes
- Text lässt sich in "neuen" Browsern wieder markieren/kopieren (-webkit-user-select).

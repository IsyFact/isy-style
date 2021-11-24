# v4.5.1
- `IFE-275`: Blendet Navigationsmenü in der Druckansicht aus
- `IFE-455`: fix security issues caused by dependency json-schema@0.2.3

# v4.5.0
- `IFS-1005`: Umstellung auf Liberation Font
    * Binde Liberation Font Version 2.1.4 mit Hilfe von font-face ein
    * Konfiguriere Liberation Font als Standard Font
#### Bekannte Probleme
- Die Darstellung des DIN SPEC Charpickers in Modalenfenstern ist falsch (betrifft auch 4.4.0)

# v4.4.0
- `IFS-848`: Styling für den Din Spec Charpicker
    * ACHTUNG: Die color.css muss einmal neu generiert werden, da Farben aus der Portal-Farbe abgeleitet werden
- `IFS-650`: Version Anhebung von Parent POM auf 1.9.0

# v4.3.3
- `IFS-650`: Parent isyfact-standards Version auf 1.8.3 gesetzt

# v4.3.2
- `IFE-188`: Fehler bei der Dropdown-Darstellung behoben:
    * Formular-Dropdown nutzt nicht die volle Breite
    * Dropup wird von Header überdeckt
    * Geöffnetes Dropdown geht über die ganze Seite auf kleinen Bildschirmen (-> Bootstrap-Select auf 1.13.18 angehoben)

# v4.3.1
- `IFE-103`: Bootstrap-Select auf 1.13.9 angehoben. Fehlender Scrollbalken bei Dropdowns behoben.
- `IFE-79`: 4-Augen-Prinzip im Styleguide beschrieben

# v4.3.0
- `IFS-413`: Dialogvorgaben angepasst, Größe passt sich dem Inhalt an, Buttons haben festen Ort
- `IFE-412`: Größenvorgaben für Buttons angepasst
- `IFE-47`: BVA-Kontext im Styleguide weiter reduzieren
- `IFE-70`: BVA-Teil des Accso-Wikis aus isy-style entfernt
- `IFE-80`: Datepicker: Verarbeitung unsicheres Datum
- `IFS-458`: Alle pom.xml Dateien mit tidy:pom formatiert und getestet.
- `IFE-40`: Nutzungskonzept für den Styleguide hinzugefügt
- `IFE-96`: JQuery auf 3.4.1 angehoben
- `IFS-247`: Screenshots in Detailkonzept überarbeitet

# v4.2.0
- `IFE-48`: Update auf jQuery 3.3.1 und Bootstrap 3.3.7
- `IFE-16`: Unterstützung für IE 8 eingestellt (Definition von `row-df` und gridpatch CSS Library entfernt).
- `IFE-65`: Upgrade auf Bootstrap 3.4.1 (vulnerability CVE-2019-8331)
- `IFE-59`: Verwendung der Portalfarbe für Navigationsmenü und Breadcrumb, Icon-Buttons (Hover) und selektierte Kopfzeilen von Tabellen
- `IFE-61`: Tabellen-Sortierpfeildarstellung auf "übereinander" geändert
- `IFE-62`: Obsoletes Parent-POM durch Open Source Parent POM ersetzt
- `IFS-311`: Einbindung isy-dokumentvorlagen; Build Styleguide über Maven

# v4.1.0
- `IFS-163`: Unterstützung für IE 8 eingestellt
- `IFS-165`: UI-Block wird bei manchen Fehlermeldungen nicht deaktiviert 
- `IFS-182`: Datepicker um Übernahme des heutigen Datums erweitert
- `IFS-187`: Umstellung der BVA-Styleguide Dokumentation auf AsciiDoc und Extraktion der WebGui spezifischen technischen Kapitel
- `IFS-205`: Dokumentation zur Navigation aus IFS-99 hinzugefügt
- `IFE-31`: Abstände zwischen Controls und Hover-Farbe Linksnavigation korrigiert

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

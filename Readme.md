# isy-style


Der Baustein `isy-style` enthält den Styleguide der IsyFact als Dokument und in Form von Source Code (CSS Klassen).
Die Stylesheets können sowohl in klassischen Webanwendungen über Maven, als auch in Angular Projekten über npm verwendet werden.

## Dokumentation

Der Baustein enthält folgende Dokumente:

* **Styleguide** - Der aktuelle Styleguide der IsyFact. 
* **Nutzungskonzept_Styleguide** - Dokumentation zum Erzeugen und Einbinden der Stylesheets in den eigenen Quellcode.

Die Dokumentation kann bei Bedarf manuell erzeugt werden.

```
$ git checkout https://github.com/IsyFact/isy-style.git
$ cd isy-style
$ mvn compile
```
Die Dokumente befinden sich anschließend im Ordner `target/docs`.

## Lokale Installation

Das Paket `isy-style` kann auf für die lokale Entwicklung installiert werden.

### Maven

Zunächst wird `isy-style` mit folgendem Befehl installiert.

```
$ mvn clean install
```

Anschließend kann das Paket als Maven dependency eingebaut werden.

```xml
<dependency>
    <groupId>de.bund.bva.isyfact</groupId>
    <artifactId>isy-style</artifactId>
    <version>5.4.0</version>
</dependency>
```

### npm

Zunächst wird `isy-style` mit folgendem Befehl paketiert.

```
$ mvn clean package
```

Daraus entsteht ein `tgz`-Paket, welches anschließend in der `package.json` des gewünschten Projekts verlinkt werden kann.

```json
{
  "dependencies": {
    "@isyfact/isy-style": "<absolute_path>/isy-style/isyfact-isy-style-5.4.0.tgz"
  }
}
```

## Hinweis zur Versionierung

`isy-style` wird immer als Maven und als npm Paket zugleich ausgeliefert, JSF-basierte GUIs verwenden das Maven Paket und Angular Anwendungen das npm Paket.

Die Version von `isy-style` steht in der `pom.xml` und wird für das npm Paket während des Builds von dort kopiert.
Deshalb in der `package.json` des Source Code keine Versions Attribut zu finden, dafür aber in der `package.json` des npm Pakets. 

## Changelog

Details zu allen Änderungen in den Versionen befinden sich im [CHANGELOG](./CHANGELOG.adoc).

## Lizenzinformationen

[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)

Copyright (c) 2013-present, Bundesverwaltungsamt

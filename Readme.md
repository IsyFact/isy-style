# isy-style

Beinhaltet die original less-Dateien, welche von Ergosign geliefert wurden.

## Setup

* node.js installieren
* Der Befehl `npm install` lädt die Dependencies in den `node_modules` Ordner.

## Build

* `npm run build` führt einen Build durch. Das Ergebnis liegt in `/dist`

## Versionspflege

Für die Versionspflege sollte das Tool `npm version` genutzt werden (siehe [docs](https://docs.npmjs.com/cli/version)).

* `npm version major` erstellt eine neue Major Version (Beispiel 2.3.4 auf 3.0.0)
* `npm version minor` erstellt eine neue Minor Version (Beispiel 2.3.4 auf 2.4.4)
* `npm version patch` erstellt eine neue Patch Version (Beispiel 2.3.4 auf 2.3.5)
* `npm version premajor` erstellt ein neues Prerelease für eine Major Version (Beispiel 2.3.4 auf 3.0.0-0)
* `npm version preminor` erstellt ein neues Prerelease für eine Minor Version (Beispiel 2.3.4 auf 2.4.0-0)
* `npm version prepatch` erstellt ein neues Prerelease für eine Patch Version (Beispiel 2.3.4 auf 2.3.5-0)
* `npm version prerelease` erstellt ein neues Prerelease (Beispiel 2.3.4-5 auf 2.3.4-6)

Mittels `npm version` wird automatisch die Version in der Datei `package.json` gebumpt und ein Tag in dem Format `v2.3.4-5` erstellt.

## Artifactory Deployment

* `url`, `repository`, `username` und `password` in der Datei `Gruntfile.js` eintragen (`artifactoryConfig`).
* `npm run deploy` führt einen Build und Deployment in das Artifactory durch.

## npm Deployment

* `npm run build` erstellt die Dateien im `/dist` Ordner.
* `npm publish dist\ --access restricted --"@isyfact:registry=[Artifactory Basis URL]/api/npm/[Artifactory Registry Name e.g. npm-local]/" --username=[User] --password=[Passwort] --email=[User E-Mail]` veröffentlicht die neue Version in eine npm Registry.

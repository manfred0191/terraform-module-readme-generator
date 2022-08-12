## Erzeugung eines neuen Releases
Nach dem erfolgten PR muss ein Tag für die Version erstellt werden:
```
git tag vx.x.x
git push --tag
```
Bei inkompatiblen Änderungen ist die Major Version um 1 zu erhöhen.

Um zu sehen, welche Tags es bereits gibt, kann dieser Befehl verwendet werden:
```
git tag --list
```

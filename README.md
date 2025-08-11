# FSO – Web/PWA klar for GitHub Pages

Dette repoet er klart til å deploye Flutter-web til **GitHub Pages**.

## Bruk
1. Opprett et nytt repo på GitHub – kall det **FSO**.
2. Last opp alle filene i denne ZIP-en til repoet (drag & drop i GitHub).
3. Gå til **Settings → Pages** → Source: **GitHub Actions** (lagre).
4. Push/commit til `main` (last opp på nytt hvis du bruker nettgrensesnittet).
5. Se Actions kjøre workflowen **Deploy Flutter Web to GitHub Pages**.
6. Når den er ferdig: URL blir
```
https://<DITT_GITHUB_BRUKERNAVN>.github.io/FSO
```
Åpne i Safari på iPhone → Del → **Legg til på Hjem-skjerm**.

## Lokal test (valgfritt)
```
flutter config --enable-web
flutter run -d chrome
flutter build web --release --web-renderer html
```

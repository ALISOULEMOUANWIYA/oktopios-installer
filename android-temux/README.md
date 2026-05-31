# Oktopios Installer - Android Termux

Install Termux from F-Droid, then run:

```bash
pkg update -y
pkg install python git -y
python -m pip install oktopios
okp --version
```

Test:

```bash
okp 'print("Bonjour Oktopios")'
```

Note: this folder name is `android-temux` in the current archive, but it refers to Android Termux.
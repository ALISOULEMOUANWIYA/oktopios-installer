# Oktopios Installer - iOS iSH

Install iSH Shell from the App Store, then run:

```sh
apk update
apk add python3 py3-pip git
python3 -m pip install oktopios
okp --version
```

Test:

```sh
okp 'print("Bonjour Oktopios")'
```
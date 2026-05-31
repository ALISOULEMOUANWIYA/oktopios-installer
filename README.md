# Oktopios Installer

Native installers for Oktopios.

For command-line installation on every platform, use the PyPI package:

```bash
pip install oktopios
okp --version
```

PyPI package:
https://pypi.org/project/oktopios/

Main Oktopios project:
https://github.com/ALISOULEMOUANWIYA/oktopios

## Native installers

| Platform | Status | Path |
|---|---|---|
| Windows | Available | `windows/white-setup/OktopiosInstaller.exe` |
| Linux | To build | `linux/white-setup/` |
| macOS | To build | `mac/white-setup/` |
| Android Termux | Command-line via PyPI | `android-temux/README.md` |
| iOS iSH | Command-line via PyPI | `ios-ish/README.md` |

## Windows installer

Download and run:

```text
windows/white-setup/OktopiosInstaller.exe
```

## What remains to build

The command-line path is already handled by PyPI for all platforms. The remaining work in this repository is to add native installers for platforms that need them, especially Linux and macOS.
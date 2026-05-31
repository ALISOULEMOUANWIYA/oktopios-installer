# Oktopios Installer - Linux

## Command line

The command-line installation is handled by PyPI:

```bash
python3 -m pip install --user oktopios
okp --version
```

If `okp` is not found:

```bash
export PATH="$HOME/.local/bin:$PATH"
okp --version
```

## Native installer

Linux native installer files will be placed in:

```text
linux/white-setup/
```
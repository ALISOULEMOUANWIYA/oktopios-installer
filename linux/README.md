# Oktopios Installer - Linux

## Native installer script

Use the installer in:

```text
linux/white-setup/install-oktopios.sh
```

Run it with:

```bash
cd linux/white-setup
chmod +x install-oktopios.sh
./install-oktopios.sh
```

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
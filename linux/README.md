# Oktopios Installer - Linux

## Install from PyPI

```bash
python3 -m pip install --user oktopios
okp --version
```

If `okp` is not found, add the local Python bin directory to your PATH:

```bash
export PATH="$HOME/.local/bin:$PATH"
okp --version
```

## From source

```bash
git clone https://github.com/ALISOULEMOUANWIYA/oktopios.git
cd oktopios
python3 -m pip install -e .
okp --version
```
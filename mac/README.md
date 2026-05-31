# Oktopios Installer - macOS

## Install from PyPI

```bash
python3 -m pip install --user oktopios
okp --version
```

If `okp` is not found, add Python user scripts to your PATH:

```bash
export PATH="$HOME/Library/Python/3.12/bin:$PATH"
okp --version
```

## From source

```bash
git clone https://github.com/ALISOULEMOUANWIYA/oktopios.git
cd oktopios
python3 -m pip install -e .
okp --version
```
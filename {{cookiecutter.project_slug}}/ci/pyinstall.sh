set -ex
printenv || true
echo $PATH || true
eval "$(pyenv init -)"
pyenv version

pyenv --skip-existing  install $PYENV
pyenv global $PYENV
pyenv versions
virtualenv VENV
source VENV/bin/activate
pip install requirements_dev.txt




#/bin/sh

curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

cat << EOS >> ~/.bashrc
export PATH="/home/`whoami`/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOS

# python install
pyenv install 3.8.1
pyenv global 3.8.1
python --version

# ansible install
pip install ansible

ansible --version
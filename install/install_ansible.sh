#/bin/sh

curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

cat << EOS >> ~/.bash_profile
export PATH="/home/`whoami`/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOS

# python install
pyenv install 2.7.14
pyenv global 2.7.14
python --version

# ansible install
pip install ansible

ansible --version
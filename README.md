# Ansible VM

Setup a VM with tools for development. It is assumed this VM is only accessible by one developer.

## First Install Ansible

```
sudo apt-get install python3 python3-pip python3-setuptools
python3 -m pip install --user ansible
sed -i '1s_^_export PATH=$PATH:~/.local/bin \n_' ~/.bashrc
. ~/.bashrc
```

**NOTE:** It is recommended not to update the system version of Python, but if you want to, do it this way:

```
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.12 python3.12-dev python3.12-venv python3-pip python3-setuptools

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.12 1
sudo update-alternatives --config python

python -m pip install --user ansible
sed -i '1s_^_export PATH=$PATH:~/.local/bin \n_' ~/.bashrc
. ~/.bashrc
```

## Environment specific variables

Set up environment specific variables based on `env.yml.sample` in env.yml

## Vault

Setup a vault with this variables:

```
vault_ssh_pass: secret
vault_mysql_root_pass: secret
```

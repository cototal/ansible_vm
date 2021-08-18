# Ansible VM

Setup a VM with tools for development. It is assumed this VM is only accessible by one developer.

## First Install Ansible

```
sudo apt-get install python3 python3-pip python3-setuptools
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10
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

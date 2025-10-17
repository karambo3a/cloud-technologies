# Автоматизированный процесс создания образа виртуальной машины с приложением и необходимыми сервисами, используя инструменты Packer и Ansible

0. Склонируйте репозиторий и перейдите в папку с заданием `hw6`

```shell
git clone git@github.com:karambo3a/cloud-technologies.git
cd cloud-technologies/hw6
```

1. Установите переменные окружения

```shell
export YC_TOKEN=$(yc iam create-token --impersonate-service-account-id <идентификатор_сервисного_аккаунта>)
export YC_FOLDER_ID=$(yc config get folder-id)
export YC_SUBNET_ID=<subnet-id>
```

2. Для установки необходимых плагинов выполните команду

```shell
packer init packer/ubuntu-nginx.pkr.hcl
```

3. Для сборки образа выполните команду

```shell
packer build packer/ubuntu-nginx.pkr.hcl
```

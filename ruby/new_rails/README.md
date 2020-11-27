# What

This is base environment of Docker + Nginx + Rails + Mysql for a new application


# Requirement and built environment

### Requirment
* follow docker
* I built this under Windows Hyper-V. So, environments under Windows docker toolbox, Linux and Mac are not tested

### Built environment
* Nginx 1.19
* Ruby 2.7.2
* Django 6.0.3
* Mysql 8.0

# How to use

1. copy .env_example to .env
2. modify .env values
  APP_NAME is your application name(APP_NAME directory is created)
3. run create container command
```bash
docker-compose up
```

```bash
docker-compose up mysql
```

4. create database
if database is already exists, skip this

```bash
mysql -u root -p
( enter password )
CREATE DATABASE [ Database name ];
```

5. create and run other containers

```bash
 docker-compose stop
 docker-compose up
 (or use -d option to run background)
```

6. create admin user
```bash
 python ./manage.py createsuperuser
 ```
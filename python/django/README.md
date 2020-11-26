# What

This is base environment of Docker + Nginx + Django + Mysql

# Requirement and built environment

### Requirment
* follow docker
* I built this under Windows Hyper-V. So, environments under Windows docker toolbox, Linux and Mac are not tested

### Built environment
* Nginx 1.19
* Python 3.8.3
* Django 3.0.7
* Mysql 8.0
* and other python libraries

# How to use

1. clone this repository
2. modify database name and root password

```python:settings.py
DATABASES ={
    ... {
        ...
        'PASSWORD' : = [ Password ]
        'HOST' : = [ Database name ]
    }
}
```

```:docker-compose.yml
services:
  ...
  mysql:
    ...
    environment:
      - MYSQL_ROOT_PASSWORD=[ Password ]
      - MYSQL_DATABASE=[ Database name ]
```

3. start mysql container

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
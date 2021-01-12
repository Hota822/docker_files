# What

This is base environment of Docker + Nginx + Rails + Mysql for a new application

# Requirement and built environment

### Requirment
* follow docker
* I built this under Windows Hyper-V. So, environments under Windows docker toolbox, Linux and Mac are not tested

### Built environment
* Nginx 1.19
* Ruby 2.7.2
* Rails 6.0.3
* Mysql 8.0

# How to use

1. copy .env_example to .env
2. modify .env values
  APP_NAME is your application name(APP_NAME directory is created)
3. select docker-compose.yml: rails: command:
  select command for your goal
  1. don't forget select command again if you have selected startup command
4. run create container command
```bash
docker-compose up
```
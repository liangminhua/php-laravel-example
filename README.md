# php + laravel + docker

该模版基于 Laravel 搭建了一个 php 全栈应用。使用 CODING 持续集成构建模版可以快速将本应用构建为 Docker 镜像，推送到 CODING 制品库，再通过 Docker Compose 部署到腾讯云 CVM 服务器。

## 快速开始

### 在开发环境运行本应用

请确保您有安装 composer，安装地址 <https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos>。

#### 安装依赖

```
composer install
```

#### 启动服务

```
cd ./src && php artisan serve
```

打开 <http://127.0.0.1:8000> 浏览本应用。

### 使用 Docker Compose 启动本应用

#### 构建 php-fpm 镜像

```
docker build -t <替换为您希望构建的镜像名> -f Dockerfile .
```

#### 基于 Docker Compose 构建应用

```
export PHP_IMAGE_NAME=<替换为您希望构建的镜像名>
docker-compose up -d
```

打开 <http://localhost:8080> 浏览本应用。

## 其他命令

### 单元测试

```
cd ./src && php artisan test
```
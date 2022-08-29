# webman
PHP框架webman的Docker镜像

## Docker运行

```bash
docker run -d -p 8787:8787 -v /data/webman:/data/wwwroot/webman helloz/webman:latest
```

## docker-compose运行

```yaml
version: '3.3'
services:
    webman:
        network_mode: "host"
        ports:
            - '8787:8787'
        volumes:
            - './data:/data/wwwroot/webman'
        image: 'helloz/webman:latest'
```


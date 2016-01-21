# docker-practice
my docker practice

docker最佳实践

* applications放置应用代码    
* files, logs放置stateful文件与日志，水平扩展需要使用分布式存储    
* 支持stateful、stateless service    
* Dockerfile描述镜像构建过程，CMD中./run.sh启动容器进程    
* 该工程为django工程，支持nginx+uwsgi+django+python，支持http&https     
* 容器启动方式如下：     
docker run --name=product-envname-django -d -it -p 80:80 -p 443:443 \    
        -e MYSQL_DATABASE="mysite" \    
        -e MYSQL_USER="mysite" \    
        -e MYSQL_PASSWORD="XXXXXXXXXXXX" \    
        -e MYSQL_HOST="XXXXXXXXXXXX" \    
        -e MYSQL_PORT="XXXXXXXXXXXX" \    
        -v /opt/fileserver/product-envname-django/logs:/opt/DJANGO-DEMO/applications/mysite/logs \    
        -v /opt/fileserver/product-envname-django/files/sharedfiles:/opt/DJANGO-DEMO/applications/mysite/template/sharedfiles \    
        10.20.0.189:5000/django:1.0.0.2
    


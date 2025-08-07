
记录docker使用

入门 

新建一个node 服务 用 docker 发布

Dockerfile  image  container 分别代表？

Docker push 到 DockerHub 分享镜像给别人

 docker build .     

 docker images 

 如何给镜像取名字

 推送镜像到hub

 删除镜像

 把镜像存在本地

 运行镜像

 docker run  -d  容器名字 在后面运行   需要进行端口映射  不能访问本地的服务 需要进行端口映射
docker tag d549bdf4935f my-node-app:v1.0

docker build -t my-node-app .  // 这里启动的是具名镜像

// 端口需要进行映射 才能访问  主机端口: 容器端口  my-node-app-container 容器的名字
 docker run  -d  -p 3000:3000 --name my-node-app-container my-node-app


docker rmi -f 

 docker ps  运行的容器


 docker ps -a 
// 删除容器

 docker rm -f 

 // 修改文件就需要修改容器

// 啥啥意思 进容器内部
 docker exec -it my-node-app-container /bin/sh

// -v 绑定文件  本地文件夹路径 : 容器路径  -v /app/node_modules  不能用本地的去覆盖容器的

// :ro 表示 容器要是有新增的文件不影响本地
 docker run  -d -v /Users/zouyu/zouyu/docker/docker-demo/:/app:ro -v /app/node_modules -p 3000:3000 --name my-node-app-container my-node-app

exit 退出容器

docker rm -f  my-node-app-container   

docker rm -fv  my-node-app-container    这个是 把 volumes 删除掉 啥意思 docker run 可以配置一大串参数 那个参数 占用内存？

启用docker-compose.yml  因为上面命令行启动太麻烦了


docker-compose up -d --build  

-d  后台运行 --build 镜像有修改就会重建



docker-compose down -v 清除容器




# 基础镜像
FROM node:alpine3.22

# 创建应用目录
WORKDIR /app

# 拷贝依赖文件并安装依赖 前面指定了工作目录 这里相对路径就可以
COPY package.json ./
RUN npm install

# 拷贝源代码  这里不用 copy node_modules 是因为前面已经安装过了  如果有 .dockerignore 文件 则会忽略掉  package.json 会复制2遍 （这样写是考虑性能  这样可以用缓存）
COPY . .

# 启动应用  这里的端口只是文档作用，实际运行时需要映射
EXPOSE 3000 
CMD ["npm", "run", "dev"]

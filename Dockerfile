# 依赖java 的镜像 可以使用java -jar 等命令
from java:8-alpine
# 设置生成这个镜像的作者
maintainer zh
workdir /data
add ./demo-server-1.0.0.SNAPSHOT.jar /data/jar/app.jar

# RUN 执行命令并创建新的镜像层，RUN 经常用于安装软件包。
# CMD 设置容器启动后默认执行的命令及其参数，但 CMD 能够被 docker run 后面跟的命令行参数替换
# ENTRYPOINT 配置容器启动时运行的命令
# set -ex 设置脚本出现异常就中断
run set -ex

# 暴露端口，就是让docker 容器以外可以访问这个端口
expose 8900
# 执行命令
cmd ["java","-jar","/data/jar/app.jar"]

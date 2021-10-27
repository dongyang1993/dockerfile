FROM adoptopenjdk/openjdk11:jre-11.0.12_7-alpine
#ttf-font是本地存放字体的目录，将需要安装的字体文件放入即可，推荐使用思源黑体或者Google Noto字体 开源免费
RUN  echo https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.14/main > /etc/apk/repositories\
		&&echo https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.14/community >> /etc/apk/repositories\
    &&apk add --no-cache fontconfig\
    && mkdir -p /usr/share/fonts/ttf-font
COPY ./ttf-font/*  /usr/share/fonts/ttf-font/
RUN fc-cache -f\
		&&fc-list
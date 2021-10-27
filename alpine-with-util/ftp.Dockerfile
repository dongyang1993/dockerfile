FROM alpine:3.13.6
RUN echo https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.14/main > /etc/apk/repositories\
	&&echo https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.14/community >> /etc/apk/repositories\
	&&apk add lftp
CMD ["sh", "-c", "top"]
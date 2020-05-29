FROM anapsix/alpine-java:8_jdk_unlimited
ADD target/app.jar /home/app.jar
ENV JAVA_OPTS="-Duser.timezone=Asia/Shanghai"
ENV APP_OPTS="--spring.profiles.active=prod"
ENTRYPOINT exec java $JAVA_OPTS -jar /home/app.jar $APP_OPTS

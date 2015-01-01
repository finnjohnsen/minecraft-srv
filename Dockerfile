FROM dockerfile/ubuntu
MAINTAINER Finn Johnsen <johnsenf@gmail.com>

RUN \
 echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
 add-apt-repository -y ppa:webupd8team/java && \
 apt-get update && \
 apt-get install -y oracle-java8-installer && \
 rm -rf /var/lib/apt/lists/* && \
 rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

WORKDIR /
RUN wget https://s3.amazonaws.com/Minecraft.Download/versions/1.8.1/minecraft_server.1.8.1.jar

EXPOSE 25565 25575
VOLUME ['/data']

WORKDIR /data
ENTRYPOINT ["/usr/bin/java", "-Xmx2048M", "-Xms2048M", "-Dcom.mojang.eula.agree=true", "-jar", "/minecraft_server.1.8.1.jar", "nogui"]
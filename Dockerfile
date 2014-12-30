FROM dockerfile/ubuntu
MAINTAINER Finn Johnsen <johnsenf@gmail.com>

RUN \
 echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
 add-apt-repository -y ppa:webupd8team/java && \
 apt-get update && \
 apt-get install -y oracle-java8-installer && \
 rm -rf /var/lib/apt/lists/* && \
 rm -rf /var/cache/oracle-jdk8-installer

RUN chmod +x /usr/lib/jvm/java-8-oracle/bin/java
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

WORKDIR /data
RUN wget https://s3.amazonaws.com/Minecraft.Download/versions/1.8.1/minecraft_server.1.8.1.jar
RUN echo "eula=true" > /data/eula.txt


EXPOSE 25565 25575
VOLUME ['/data']

ENTRYPOINT ["/usr/lib/jvm/java-8-oracle/bin/java", "-Xmx2048M", "-Xms2048M", "-jar", "/data/minecraft_server.1.8.1.jar", "nogui"]
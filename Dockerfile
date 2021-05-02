FROM java

ADD ./target/myproject-0.0.1-SNAPSHOT.jar /myproject-0.0.1-SNAPSHOT.jar
ADD ./run.sh /run.sh
RUN chmod a+x /run.sh
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-20.10.6.tgz \
  && tar xzvf docker-20.10.6.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-20.10.6.tgz
EXPOSE 8080:8080
CMD /run.sh

FROM openjdk:8-jre-alpine

ENV VERSION 5.0

RUN cd /opt && \
  wget https://www.languagetool.org/download/LanguageTool-$VERSION.zip && \
  unzip LanguageTool-$VERSION.zip && \
  rm -f LanguageTool-$VERSION.zip

WORKDIR /opt/LanguageTool-$VERSION
EXPOSE 8081
CMD java -cp languagetool-server.jar org.languagetool.server.HTTPServer --port 8081 --allow-origin "*"
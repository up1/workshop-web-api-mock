FROM openjdk:8u252-jre-slim-buster
RUN apt update && apt install -y wget
WORKDIR /api
RUN wget https://repo1.maven.org/maven2/io/github/azagniotov/stubby4j/6.0.2/stubby4j-6.0.2.jar
COPY . .
EXPOSE 8882 8889
ENTRYPOINT ["java", "-jar", "stubby4j-6.0.2.jar","--location", "0.0.0.0", "--data", "api.yml"]
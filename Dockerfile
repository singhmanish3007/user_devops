FROM frolvlad/alpine-oraclejdk8:slim
EXPOSE 9090
RUN mkdir -p /app/
ADD build/libs/user-devops-0.0.1-SNAPSHOT.jar /app/user-devops.jar
ENTRYPOINT ["java", "-jar", "/app/user-devops.jar"]
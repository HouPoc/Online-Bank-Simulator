FROM picoded/ubuntu-openjdk-8-jdk

RUN apt-get update && apt-get install -y maven
COPY . /Online-Bank-Simulator
RUN  cd /Online-Bank-Simulator && mvn -X package

#ENTRYPOINT ["java","-jar","/app.jar"]
#ENTRYPOINT ["java", "-jar","/Online-Bank-Simulator/target/userFront-0.0.1-SNAPSHOT.jar"]


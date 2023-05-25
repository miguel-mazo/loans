FROM openjdk:17
WORKDIR /app
COPY . .
ENV SPRING_PROFILES_ACTIVE dev
ENV SPRING_CONFIG_IMPORT configserver:http://configserver:8071/
ENV EUREKA_CLIENT_SERVICEURL_DEFAULTZONE http://eurekaserver:8070/eureka/
ENTRYPOINT ["java","-jar", "loans-0.0.1-SNAPSHOT.jar"]
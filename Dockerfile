
# ejemplo en un Dockerfile que se hizo en un proyecto de java con springboot, maven

#     para java, si es otro lenguaje buscar en docker hub la image correcta
FROM eclipse-temurin:17-jdk-alpine
#   nombre que yo le di, pero puede ser cualquiera    es la carpeta donde se compilara el .jar      nombre y version que le aparece en el pom.xml, debe ser exactamente igual        se coloca para spring
ARG JAR_FILE=                                          target/                                      crudsupermercado-0.0.1                                                          .jar
#    variable de entorno, se toma del argm anterior        es un nombre diferente que creo
COPY ${JAR_FILE}                                           app.crudsupermercado.jar
       # es el puerto de spring
EXPOSE 8080
#       PUNTO DE ENTRADA
ENTRYPOINT ["java","-jar","app.crudsupermercado.jar"]

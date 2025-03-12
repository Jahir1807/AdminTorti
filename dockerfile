# Usa una imagen base de Tomcat con Java 21
FROM tomcat:10.1-jdk21-temurin

# Copia el archivo WAR a la carpeta de despliegue de Tomcat
COPY target/mi-proyecto-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expone el puerto 8080 (puerto predeterminado de Tomcat)
EXPOSE 8095

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]
# Use uma imagem base do WildFly
FROM jboss/wildfly:latest

# Defina o diretório de trabalho
WORKDIR /opt/jboss/wildfly

# Copie o arquivo WAR para o diretório de deploy do WildFly
COPY SampleWebApp.war /opt/jboss/wildfly/standalone/deployments/

# Exponha a porta padrão do WildFly
EXPOSE 8080

# Comando para iniciar o servidor WildFly
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

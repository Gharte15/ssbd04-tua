FROM quay.io/wildfly/wildfly:27.0.0.Final-jdk17


ARG WILDFLY_USER
ARG WILDFLY_PASS
ARG DB_NAME
ARG DB_USER
ARG DB_PASS
ARG DB_URI
ARG MYSQL_VERSION
ARG JBOSS_CLI=/opt/jboss/wildfly/bin/jboss-cli.sh
ARG DEPLOYMENT_DIR=/opt/jboss/wildfly/standalone/deployments/

# Setting up WildFly Admin Console
RUN echo "=> Adding WildFly administrator"
RUN echo "SPRAWDZAM ZIOMAL"
RUN $JBOSS_HOME/bin/add-user.sh -u $WILDFLY_USER -p $WILDFLY_PASS --silent

# Configure Wildfly server
RUN echo "=> Starting WildFly server" && \
      bash -c '$JBOSS_HOME/bin/standalone.sh &' && \
    echo "=> Waiting for the server to boot" && \
      bash -c 'until `$JBOSS_CLI -c ":read-attribute(name=server-state)" 2> /dev/null | grep -q running`; do echo `$JBOSS_CLI -c ":read-attribute(name=server-state)" 2> /dev/null`; sleep 1; done' && \
    echo "=> Downloading MySQL driver" && \
     # for versions < 8.0.31 use link:
     # http://search.maven.org/remotecontent?filepath=mysql/mysql-connector-java/${MYSQL_VERSION}/mysql-connector-java-${MYSQL_VERSION}.jar
      curl --location --output /tmp/mysql-connector-java-${MYSQL_VERSION}.jar --url https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/${MYSQL_VERSION}/mysql-connector-j-${MYSQL_VERSION}.jar && \
    echo "=> Adding MySQL module" && \
      $JBOSS_CLI --connect --command="module add --name=com.mysql --resources=/tmp/mysql-connector-java-${MYSQL_VERSION}.jar --dependencies=javax.api,javax.transaction.api,javax.servlet.api" && \
    echo "=> Adding MySQL driver" && \
      $JBOSS_CLI --connect --command="/subsystem=datasources/jdbc-driver=mysql:add(driver-name=mysql,driver-module-name=com.mysql,driver-class-name=com.mysql.jdbc.Driver)" && \
    echo "=> Creating ${DB_NAME}_admin datasource" && \
      $JBOSS_CLI --connect --command="data-source add \
        --name=${DB_NAME}_admin \
        --jndi-name=java:/app/jdbc/${DB_NAME}_admin \
        --user-name=${DB_NAME}_admin \
        --password=${DB_NAME}_admin \
        --driver-name=mysql \
        --connection-url=jdbc:mysql://${DB_URI}/${DB_NAME} \
        --enabled=true" && \
    echo "=> Disabling Security Realm" && \
        $JBOSS_CLI --connect --command="/subsystem=undertow/application-security-domain=other:write-attribute(name=integrated-jaspi, value=false)" && \
    echo "=> Shutting down WildFly and Cleaning up" && \
      $JBOSS_CLI --connect --command=":shutdown" && \
      rm -rf $JBOSS_HOME/standalone/configuration/standalone_xml_history/ $JBOSS_HOME/standalone/log/* && \
      rm -f /tmp/*.jar

# Expose http and admin ports
EXPOSE 8080 9990

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
FROM jboss/wildfly
RUN chmod -R a+rw ${JBOSS_HOME}

USER root

RUN yum update -y
RUN yum autoremove -y


# Deploy Axis files
#ADD build/axis2-1.6.2.tar.gz ${JBOSS_HOME}/standalone/deployments/i2b2.war/
#RUN touch ${JBOSS_HOME}/standalone/deployments/i2b2.war.dodeploy


ADD standalone/configuration/* ${JBOSS_HOME}/standalone/configuration/
ADD standalone/deployments/ ${JBOSS_HOME}/standalone/deployments/


RUN chmod -R a+rw ${JBOSS_HOME}


USER jboss

EXPOSE 9090

# Base image
FROM jenkins/jenkins:lts

COPY init-scripts /usr/share/jenkins/ref/init.groovy.d

ADD plugins.txt /usr/share/jenkins/ref/
ADD jenkins.yaml /usr/share/jenkins/ref/

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Environment variables
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc_configs

VOLUME /var/jenkins_home

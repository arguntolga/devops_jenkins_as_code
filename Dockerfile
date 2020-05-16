# Base image
FROM jenkins/jenkins:lts
# Environment variables
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc_configs

# Copy and install plugins from plugins file
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Copy configuration to config path set in environment variable
COPY jenkins.yaml ${CASC_JENKINS_CONFIG}/jenkins.yaml

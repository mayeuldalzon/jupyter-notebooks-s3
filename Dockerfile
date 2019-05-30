FROM python:3.6

USER root
RUN yum -y install java-1.8.0-openjdk maven &&\
    yum clean all
USER 1001
RUN pip install pyspark==2.4.*
RUN fix-permissions /opt/app-root
FROM quay.io/jupyter/tensorflow-notebook:lab-4.3.4

USER root

RUN  apt-get update &&   \
     apt-get install -y  curl \
                         file \
                         gnupg \
                         graphviz \
                         less \
                         lsb-release \
                         openjdk-8-jdk-headless \
                         python3-pycuda \
                         wget \
                         xvfb &&  \
     echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" \
     >> /etc/profile.d/20-java.sh

USER jovyan

RUN  pip install    ale-py \
                    graphviz \
                    gym \
                    jupyterlab-git \
                    jupyter_contrib_nbextensions \
                    pydot \
                    pygame \
                    pyvirtualdisplay \
                    pyyaml

FROM centos

ARG sbt_setup=sbt-1.2.8.tgz
ARG anaconda_python_setup=Anaconda3-2018.12-Linux-x86_64.sh


RUN yum update -y && yum install -y bzip2 && yum install -y java-1.8.0-openjdk-devel && yum install -y make
COPY setup_files/${anaconda_python_setup} /root/setup_files/${anaconda_python_setup}
RUN bash /root/setup_files/${anaconda_python_setup} -b -p /opt/anaconda3 -s && echo "export PATH=/opt/anaconda3/bin:$PATH" >> /root/anaconda_enable.sh
ADD setup_files/${sbt_setup} /opt/
ENV PATH="/opt/sbt/bin:${PATH}"
RUN sbt version  # cache sbt library jars

CMD ["bash"]

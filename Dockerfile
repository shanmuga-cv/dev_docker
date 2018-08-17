FROM centos

RUN yum update -y && yum install -y bzip2 && yum install -y java-1.8.0-openjdk-devel && yum install -y make
COPY setup_files/Anaconda3-5.2.0-Linux-x86_64.sh /root/setup_files/Anaconda3-5.2.0-Linux-x86_64.sh
RUN bash /root/setup_files/Anaconda3-5.2.0-Linux-x86_64.sh -b -p /opt/anaconda3 -s && echo "export PATH=/opt/anaconda3/bin:$PATH" >> /root/anaconda_enable.sh

CMD ["bash"]
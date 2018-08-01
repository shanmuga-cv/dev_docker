FROM centos

RUN yum update -y && yum install -y java-1.8.0-openjdk-devel

CMD ["bash"]
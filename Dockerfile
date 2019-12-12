FROM centos

RUN yum update -y && yum install -y bzip2 && yum install -y java-1.8.0-openjdk-devel && yum install -y make && yum -y install openssh-clients

ENV PATH="/opt/program_files/anaconda3/bin:/opt/program_files/sbt/bin:/opt/program_files/terraform/:${PATH}"


CMD ["bash"]

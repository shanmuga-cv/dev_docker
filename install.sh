anaconda_python_setup=Anaconda3-2019.10-Linux-x86_64.sh
bash /opt/setup_files/${anaconda_python_setup} -b -p /opt/program_files/anaconda3 -s 

terraform_setup=terraform
cp -r /opt/setup_files/${terraform_setup} /opt/program_files/

sbt_setup=sbt-1.2.8.tgz
tar -zxf /opt/setup_files/${sbt_setup} -C /opt/program_files/
sbt version  # cache sbt library jars



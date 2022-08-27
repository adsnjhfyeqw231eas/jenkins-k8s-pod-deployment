# sys req: single instance - ubuntu 20 LTS, t2.large (2 CPUs, 8 GB RAM) on AWS

# steps:
-  run bootstrap.sh while launching aws ec2 instance
-  run jenkins.sh
-  run k8s.sh , manually run commented lines, verify if k8s cluster is ready with $ kubectl get nodes
-  jenkins plugins: kubernetes
-  create and run a fake PIPELINE job to create workspace(jenkinsfile.gy goes to job as groovy script), and copy app.yaml to the pipeline project workspace
-  to avoid error "jenkins pipeline error: Please login as the user "ubuntu" rather than the user "root".
make entry to /etc/sudoers: 
\$ sudo visudo ->  
jenkins ALL=(ALL) ALL

- and add if you are running k8s on a seprate server then , then setup cloud/manage nodes and cloud

- Finally run the job



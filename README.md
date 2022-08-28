# sys req: single instance - ubuntu 20 LTS, t2.medium on AWS

# steps:
-  run bootstrap.sh while launching aws ec2 instance
- change hostnames of jenkins and k8s instances
-  run jenkins.sh
-  run k8s.sh , manually run commented lines, verify if k8s cluster is ready with $ kubectl get nodes
-  jenkins plugins: kubernetes, ssh-agent
-  to avoid error "jenkins pipeline error: Please login as the user "ubuntu" rather than the user "root".
make entry to /etc/sudoers: 
\$ sudo visudo ->  
jenkins ALL=(ALL) ALL

- and add if you are running k8s on a seprate server then , then setup cloud/manage nodes and cloud.

- on k8s server, cat ./kube/config and save it to laptop
- setup k8s cloud with jenkins and test connection.

- setup passwordless ssh between jenkins server's (jenkins user: /var/lib/jenkins/.ssh) and k8s server's (root user) and connect to generate known_hosts file.
- create pipeline job and copy-paste jenkinsfile content as groovy script in the job
- Finally run the job



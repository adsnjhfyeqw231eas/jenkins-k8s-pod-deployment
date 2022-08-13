steps:
-  run bootstrap.sh
-  run jenkins.sh
-  run k8s.sh
-  run a fake job to create workspace, and copy dockerfile and app.yaml to pipeline workspace
-  jenkins plugins:
docker, 
docker pipeline,
ssh agent

-  add dockerhub credential to jenkins (global cred) with username and password(dockerhub token)

-  to avoid error "jenkisn pipeline error: Please login as the user "ubuntu" rather than the user "root".
make entry to /etc/sudoers: 
# visudo
jenkins ALL=(ALL) ALL

- and add if you are running k8s on a seprate server then , add aws provided .pem file contents to Jenkins global cred as secret text. id must be k8s as it is in use in jenkinsfile.gy


run a fake job to create workspace, and copy dockerfile and app.yaml to pipeline workspace

to avoid error "jenkisn pipeline error: Please login as the user "ubuntu" rather than the user "root".
make entry to /etc/sudoers: 
# visudo
jenkins ALL=(ALL) ALL

jenkins plugins:
docker, 
docker pipeline,
ssh agent



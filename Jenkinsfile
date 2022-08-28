pipeline {
    agent any
 stages {
  stage('Deploy on K8s') {
    steps {
      sshagent(['172.31.6.250']) {
        sh "git clone https://github.com/TridevGuha/jenkins-k8s-pod-deployment.git"
        sh "ls jenkins-k8s-pod-deployment/app.yaml"
        sh "scp -o StrictHostKeyChecking=no jenkins-k8s-pod-deployment/app.yaml root@172.31.6.250:/root"
      script {
        try {
           sh "ssh root@172.31.6.250 kubectl apply -f app.yaml"
        }catch(error) {
           sh "ssh root@172.31.6.250 kubectl apply -f app.yaml"
        }
      }
      }
    }
  }
        
  }
}

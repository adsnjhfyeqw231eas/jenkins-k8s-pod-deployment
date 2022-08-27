pipeline {
    agent any
 stages {
  stage('Deploy on K8s') {
    steps {
      sshagent(['k8s']) {
        sh "git clone https://github.com/TridevGuha/jenkins-k8s-pod-deployment.git"
        sh "ls jenkins-k8s-pod-deployment/app.yaml"
        sh "scp -o StrictHostKeyChecking=no jenkins-k8s-pod-deployment/app.yaml root@k8s:/root"
      script {
        try {
           sh "ssh root@k8s kubectl apply -f app.yaml"
        }catch(error) {
           sh "ssh root@k8s kubectl apply -f app.yaml"
        }
      }
      }
    }
  }
        
  }
}

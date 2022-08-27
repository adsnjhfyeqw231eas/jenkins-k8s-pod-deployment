pipeline {
    agent any
 stages {
  stage('Deploy on K8s') {
    steps {
      sshagent(['k8s']) {
        sh "scp -o StrictHostKeyChecking=no app.yaml root@k8s:/root"
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

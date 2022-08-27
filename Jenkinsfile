pipeline {
    agent any
 stages {
  stage('Deploy on K8s') {
    steps {
      sshagent(['k8s']) {
        sh "scp -o StrictHostKeyChecking=no app.yaml root@k8s-targetip:/root"
      script {
        try {
           sh "ssh root@k8s-targetsameaboveip kubectl apply -f ."
        }catch(error) {
           sh "ssh root@k8s-targetsameaboveip kubectl apply -f ."
        }
      }
      }
    }
  }
        
  }
}

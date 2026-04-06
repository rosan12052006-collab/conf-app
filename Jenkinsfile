pipeline {
    agent any
    stages {
        stage('Build Image') {
            steps {
                bat 'docker build -t conference-app:latest .'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                // This line tells Jenkins EXACTLY where your Docker Desktop K8s "key" is
                bat 'kubectl --kubeconfig="C:/Users/Rosan/.kube/config" apply -f deployment.yaml'
            }
        }
        stage('Verify') {
            steps {
                bat 'kubectl --kubeconfig="C:/Users/Rosan/.kube/config" get pods'
                bat 'kubectl --kubeconfig="C:/Users/Rosan/.kube/config" get services'
            }
        }
    }
}

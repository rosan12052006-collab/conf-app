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
                // Using your exact folder path from the image
                bat 'kubectl --kubeconfig="C:/Users/batch1.VITUNIVERSITY/.kube/config" apply -f deployment.yaml'
            }
        }
        stage('Verify') {
            steps {
                bat 'kubectl --kubeconfig="C:/Users/batch1.VITUNIVERSITY/.kube/config" get pods'
                bat 'kubectl --kubeconfig="C:/Users/batch1.VITUNIVERSITY/.kube/config" get services'
            }
        }
    }
}

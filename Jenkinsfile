pipeline {
    agent any
    stages {
        stage('Build Image') {
            steps {
                // Change 'sh' to 'bat' for Windows
                bat 'docker build -t conference-app:latest .'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                // Change 'sh' to 'bat' for Windows
                bat 'kubectl apply -f deployment.yaml'
            }
        }
        stage('Verify') {
            steps {
                bat 'kubectl get pods'
                bat 'kubectl get services'
            }
        }
    }
}

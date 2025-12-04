pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/yourusername/ci-cd-pipeline-jenkins-docker.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-demo-app .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                sh 'docker tag devops-demo-app yourdocker/devops-demo-app:latest'
                sh 'docker push yourdocker/devops-demo-app:latest'
            }
        }

        stage('Deploy to Server') {
            steps {
                sh 'ssh ubuntu@CLOUD_SERVER_IP "bash ~/deploy.sh"'
            }
        }
    }
}

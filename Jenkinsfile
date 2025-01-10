pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'inteli24/website-prt-org'
        DOCKER_REGISTRY = 'https://hub.docker.com'
    }
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/rraksha28/Website-PRT-ORG.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker Image
                    sh 'docker build -t prt .'
                }
            }
        }
        stage('Push Docker Image to DockerHub') {
            steps {
                script {
                    // Log in to DockerHub and Push the Image
                    sh 'docker login -u inteli24 -p Raksha@24'
                    sh 'docker push prt'
                }
            }
        }
    }
    post {
        success {
            echo 'Docker image built and pushed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}

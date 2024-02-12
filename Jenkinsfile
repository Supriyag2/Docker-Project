  pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn deploy'
            }
        }
        stage('docker-build') {
            steps {
                sh 'cd Docker-Project && docker build -t docker-Project:v1 .'
            }
        }
        stage('docker-image-changename'){
            steps {
                sh 'docker tag docker-Project:v1 supriyagurram/docker_project1:v1'
            }
        }
        stage('docker-push') {
            steps {
                sh 'docker push supriyagurram/docker_project1:v1'
            }
        }
        stage('docker-run'){
            steps {
                sh 'docker run -d -p 8080:8080 --name dockerProject supriyagurram/docker_project1:v1'
            }
        }
    }
}


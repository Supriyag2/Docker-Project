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
                sh 'docker build -t supriyagurram/project_1:1 .'
            }
        }
        stage('docker-push') {
            steps {
                sh 'docker push ssupriyagurram/project_1:1'
            }
        }
        stage('docker-run'){
            steps {
                sh 'docker run -d -p 8080:8080 --name supriyagurram/project_1.1'
            }
        }
    }
}


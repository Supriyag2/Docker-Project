pipeline {
    agent any
    
    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn deploy'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myimage:v.0.1 .'
            }
        }
        stage('Verify Docker Images') {
            steps {
                sh 'docker images'
            }
        }
        stage('Create New Docker Image Tag') {
            steps {
                sh 'docker tag myimage:v.0.1 supriyagurram/jenkis_docker_project:v.0.1'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8092:8080 supriyagurram/jenkis_docker_project:v.0.1'
                // Optional: Add sleep step if needed
                // sh 'sleep 5'
            }
        }
        stage('Push the image to a registry') {
            steps {
                sh 'docker push supriyagurram/jenkis_docker_project:v.0.1'
            }
        }
}
}  
             

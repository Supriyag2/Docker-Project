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
                sh 'docker build -t myimage:v.0.0 .'
            }
        }
        stage('Verify Docker Images') {
            steps {
                sh 'docker images'
            }
        }
        stage('Create New Docker Image Tag') {
            steps {
                sh 'docker tag myimage:${docker_image_tag} supriyagurram/jenkis_docker_project:v.0.0'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8091:8080 supriyagurram/jenkis_docker_project:v.0.0'
                // Optional: Add sleep step if needed
                // sh 'sleep 5'
            }
        }
        stage('Push the image to a registry') {
            steps {
                sh 'docker push supriyagurram/jenkis_docker_project:v.0.0'
            }
        }
}
}  
             

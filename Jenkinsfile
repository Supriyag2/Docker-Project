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
                sh 'docker build -t myimage:${docker_image_tag} .'
            }
        }
        stage('Verify Docker Images') {
            steps {
                sh 'docker images'
            }
        }
        stage('Create New Docker Image Tag') {
            steps {
                sh 'docker tag myimage:${docker_image_tag} supriyagurram/jenkis_docker_project:${docker_image_tag}'
            }
        }
        
        stage('Push the image to a registry') {
            steps {
                sh 'docker push supriyagurram/jenkis_docker_project:${docker_image_tag}'
            }
        }
        stage('run the container'){
            steps {
                sh 'docker run -d -p 8088:8080 supriyagurram/jenkis_docker_project:${docker_image_tag}'
            }
        }
 }
}  
             

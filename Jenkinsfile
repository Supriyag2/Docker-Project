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
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8087:8080 --name container2 myimage:${docker_image_tag}'
                // Optional: Add sleep step if needed
                // sh 'sleep 5'
            }
        }
       stage('Create New Docker Image Tag') {
            steps {
                sh 'docker tag myimage:${docker_image_tag} supriyagurram/project_1:${docker_image_tag}'
            }
        }
        stage('Verify New Docker Image Tag') {
            steps {
                sh 'docker images'
            }
        }
        stage('Push the image to a registry') {
            steps {
                sh 'docker push supriyagurram/project_1:${docker_image_tag} '
            }
        }
}
}  
             

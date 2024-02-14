pipeline {
    agent any
    
    stages {
        stage('List Directory Contents for verifying') {
            steps {
                sh 'ls -l'
            }
        }
        stage('Print Current Working Directory') {
            steps {
                sh 'pwd'
            }
        }
        stage('Print Current User') {
            steps {
                sh 'whoami'
            }
        }
        stage('Maven Build') {
            steps {
                sh 'mvn deploy'
            }
        }
        stage('List Directory Contents After Install') {
            steps {
                sh 'ls -l'
            }
        }
        stage('List Contents of "target" Directory') {
            steps {
                sh 'ls -l target'
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
                sh 'docker run -d -p 8083:8080 --name container1 myimage:${docker_image_tag}'
                // Optional: Add sleep step if needed
                // sh 'sleep 5'
            }
        }
        stage('Check Running Container') {
            steps {
                sh 'docker ps -f name=container1'
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
             

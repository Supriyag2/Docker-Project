pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
               sh 'cd coit-backend1 && mvn install'
            }
        }
        stage('docker-build') {
            steps {
               sh 'cd coit-backend1 && docker build -t coit-backend1-12344321 .'
            }
        }
        stage('docker-push') {
            steps {
               sh 'echo "push"'
                // docker push amol1996/coit-backend1-12344321
            }
    }
}
}

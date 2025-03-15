pipeline {
    agent any
    stages {
       
        stage('Checkout') {
            steps {
                git url: 'https://github.com/DrTripleN/comp367lab2.git', branch: 'main'
            }
        }

  
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

    
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds', 
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    bat "docker login -u ${DOCKER_USER} -p ${DOCKER_PASS}"
                }
            }
        }

       
        stage('Docker Build') {
            steps {
                bat 'docker build -t nathanieln/nn_comp367lab2 .'
            }
        }

        
        stage('Docker Push') {
            steps {
                bat 'docker push nathanieln/nn_comp367lab2:latest'
            }
        }
    }
}
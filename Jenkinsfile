pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://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@github.com/DrTripleN/comp367lab2.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
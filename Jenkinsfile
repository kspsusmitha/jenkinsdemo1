pipeline {
    agent {
        label 'ubuntu'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Check Environment') {
            steps {
                sh 'whoami'
                sh 'hostname'
                sh 'pwd'
            }
        }
    }
}
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

        stage('Check Tools') {
            steps {
                sh 'git --version'
                sh 'java -version'
                sh 'python3 --version'
            }
        }

        stage('List Project Files') {
            steps {
                sh 'ls -la'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }

        success {
            echo 'Build Successful!'
        }

        failure {
            echo 'Build Failed!'
        }
    }
}
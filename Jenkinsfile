pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Manoj-345/simple-cicd'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mywebapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8081:80 mywebapp'
            }
        }
    }
}

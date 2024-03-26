pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh '''
                docker build -t hello .
                '''
            }
        }

        stage('run') {
            steps {
                sh '''
                docker run --rm hello
                '''
            }
        }
    }
}
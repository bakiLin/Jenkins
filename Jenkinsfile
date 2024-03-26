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

        stage('test') {
            agent {
                docker 'python:latest'
            }
            steps {
                sh '''
                python --version
                '''
            }
            // post {
            //     success {
            //         archiveArtifacts 'dist/hello' 
            //     }
            // }
        }
    }
}
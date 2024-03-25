pipeline {
    agent { 
        docker {
            image 'python:3.12.1-alpine3.19' 
        }
    }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                python --version
                pip install -r pyinstaller
                '''
            }
        }
    }
}
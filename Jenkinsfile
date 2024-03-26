pipeline {
    agent any

    stages {
        stage('test') {
            agent {
                dockerfile true
            }
            steps {
                sh '''
                pyinstaller --onefile source/hello.py
                '''
            }
        }
    }
}
pipeline {
    agent any

    stages {
        stage('test') {
            agent {
                dockerfile true
            }
            steps {
                sh '''
                pyinstaller --version
                pyinstaller --onefile source/hello.py
                '''
            }
            post {
                success {
                    archiveArtifacts artifacts: 'dist/hello.exe' 
                }
            }
        }
    }
}
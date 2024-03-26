pipeline {
    agent any

    stages {
        stage('test') {
            agent {
                docker 'cdrx/pyinstaller-linux:latest'
            }
            steps {
                sh '''
                pyinstaller --version
                '''
            }
            // post {
            //     success {
            //         archiveArtifacts artifacts: 'dist/hello.exe' 
            //     }
            // }
        }
    }
}
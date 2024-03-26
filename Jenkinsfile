pipeline {
    agent any

    stages {
        stage('test') {
            agent {
                //docker 'cdrx/pyinstaller-linux:latest'
                dockerfile true
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
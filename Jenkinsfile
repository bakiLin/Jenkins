pipeline {
    agent any

    stages {
        stage('test') {
            agent {
                //docker 'cdrx/pyinstaller-linux:latest'
                docker 'python'
            }
            steps {
                sh '''
                python --version
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
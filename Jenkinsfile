pipeline {
    agent {
        docker 'mono:latest'
    }

    environment {
        MCS_OPTIONS = '-out:build/hello.exe source/*.cs'
    }

    options {
        timestamps()
    }

    stages{
        stage('Build') {
            steps {
                sh 'mkdir -p build'
                sh 'mcs $MCS_OPTIONS'
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: 'build/hello.exe'
        }
    }
}
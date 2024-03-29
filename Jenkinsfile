pipeline {
    agent {
        docker 'mono:latest'
    }

    environment {
        MCS_OPTIONS = '-out:build/result.exe hello/*.cs'
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

        // stage('Testing') {
        //     steps {
        //         sh 'mono build/result.exe > test.txt'
        //     }
        // }
    }

    post {
        success {
            archiveArtifacts artifacts: 'build/result.exe'
        }
    }
}
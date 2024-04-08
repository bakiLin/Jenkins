pipeline {
    agent {
        docker 'mono:latest'
    }

    environment {
        bld = '-out:build/hello.exe source/*.cs'
    }

    options {
        timestamps()
    }

    stages {
        stage('Build') {
            steps {
                sh 'mkdir -p build'
                sh 'mcs $bld'
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: 'build/hello.exe'
        }
    }
}

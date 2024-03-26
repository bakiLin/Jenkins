pipeline {
    agent any

    stages {
        // stage('build') {
        //     steps {
        //         sh '''
        //         docker build -t hello .
        //         '''
        //     }
        // }

        // stage('run') {
        //     steps {
        //         sh '''
        //         docker run --rm hello
        //         '''
        //     }
        // }

        stage('test') {
            agent {
                //docker 'python:latest'
                docker 'cdrx/pyinstaller-linux:latest'
            }
            steps {
                sh '''
                pyinstaller --onefile source/hello.py
                '''
            }
            post {
                success {
                    archiveArtifacts 'dist/hello' 
                }
            }
        }
    }
}
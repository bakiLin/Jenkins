pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh '''
                docker build -t hello .
                '''
            }
        }

        stage('run') {
            steps {
                sh '''
                docker run --rm hello
                docker exec -it hello sh -c "echo a && echo b"
                '''
            }
        }

        // stage('test') {
        //     agent {
        //         docker 'python:latest'
        //     }
        //     steps {
        //         sh '''
        //         pyinstaller --onefile source/hello.py
        //         '''
        //     }
        //     post {
        //         success {
        //             archiveArtifacts 'dist/hello' 
        //         }
        //     }
        // }
    }
}
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
                pyinstaller --onefile source/hello.py
                '''
            }
            post {
                success {
                    archiveArtifacts 'dist/hello' 
                }
            }
        }

        // stage('test') {
        //     steps {
        //         sh '''
        //         pyinstaller --onefile source/hello.py
        //         '''
        //     }
            // post {
            //     success {
            //         archiveArtifacts 'dist/hello' 
            //     }
            // }
        // }
    }
}
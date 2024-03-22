pipeline {
    agent none
    options {
        skipStagesAfterUnstable()
    }
    triggers { 
        pollSCM '* * * * *' 
    }
    stages {
        stage('Build') {
            agent { 
                node { 
                    label 'python-agent' 
                }
            }
            steps {
                sh '''
                python -m py_compile source/hello.py
                '''
            }
        }
        stage('Test') {
            agent { 
                node { 
                    label 'python-agent' 
                }
            }
            steps {
                sh '''
                sleep 10s
                '''
            }
        }
        stage('Deliver') {
            agent { 
                docker { 
                    image 'cdrx/pyinstaller-linux:python2' 
                }
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

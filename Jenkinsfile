pipeline {
    agent none
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
        stage('Deliver') {
            agent { 
                docker { 
                    image 'cdrx/pyinstaller-linux:python3' 
                }
            }
            steps {
                sh '''
                pyinstaller --onefile source/hello.py
                '''
            }
        }
    }
}

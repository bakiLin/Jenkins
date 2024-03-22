pipeline {
    agent any
    triggers { 
        pollSCM '* * * * *' 
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                python -m py_compile source/hello.py
                '''
            }
        }
        stage('Deliver') {
            steps {
                sh '''
                pyinstaller --onefile source/hello.py
                '''
            }
        }
    }
}

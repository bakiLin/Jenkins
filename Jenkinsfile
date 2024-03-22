pipeline {
    agent none
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
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing testing stuff.."
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}

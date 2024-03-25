pipeline {
    agent { 
        label 'python-agent' 
    }

    triggers {
        pollSCM '* * * * *'
    }

    stages {
        stage('Build') {
            steps {
                sh '''
                cd source
                python3 hello.py
                '''
            }
        }

        stage('Test') {
            steps {
                sh 'build successful'
            }
        }
    }
}
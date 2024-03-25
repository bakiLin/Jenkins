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
                docker build .
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
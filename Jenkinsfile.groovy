pipeline {
    agent any
    options {
        timestamps()
        disableConcurrentBuilds()
        disableResume()
    }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Test') {
            steps {
                sh '''
                echo "Hello"
                '''
            }
        }
    }
}
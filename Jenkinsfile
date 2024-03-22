pipeline {
    agent { 
        node { 
            label 'python-agent' 
        }
    }
    triggers { 
        pollSCM '* * * * *' 
    }
    environment {
        HOME = "${env.WORKSPACE}"
    }
    stages {
        stage('Install') {
            steps {
                sh '''
                pip install pyinstaller
                '''
            }
    }
}

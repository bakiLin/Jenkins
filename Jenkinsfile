pipeline {
    agent { 
        node { 
            label 'python-agent' 
        }
    }
    triggers { 
        pollSCM '* * * * *' 
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                pip install pyinstaller
                '''
            }
    }
}

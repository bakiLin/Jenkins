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
        stage('Install') {
            steps {
                sh '''
                pip install pyinstaller
                '''
            }
    }
}

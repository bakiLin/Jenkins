pipeline {
    agent { 
        agent {
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
                python --version
                pip install -r pyinstaller
                '''
            }
        }
    }
}
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
                echo "Building.."
                sh '''
                cd python
                pip install -r requirements.txt
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                cd python
                pyinstaller hello.py --onefile
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

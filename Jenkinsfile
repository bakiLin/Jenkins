pipeline {
    agent {
        docker {
             image 'alpine' 
             args '-v $HOME:/home/jenkins'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
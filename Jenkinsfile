pipeline {
    agent none
    stages {
        stage('Build') {
            steps {
                def dockerHome = tool 'myDocker'
                env.PATH = "${dockerHome}/bin:${env.PATH}"
            }
        }
        
        stage('Test') {
            agent {
                docker {
                    image 'python' 
                } 
            }
            steps {
                sh 'python --version'
            }
        }
    }
}
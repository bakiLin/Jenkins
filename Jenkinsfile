pipeline {
    agent {
        docker {
            image 'python' 
        } 
    }

    stages {
        stage('Initialize') {
            def dockerHome = tool 'myDocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        stage('Test') {
            steps {
                sh 'python --version'
            }
        }
    }
}
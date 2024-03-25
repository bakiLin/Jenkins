pipeline {
    agent none

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'bakilin/python_image:latest'
                }
            }
            steps {
                sh 'python -m py_compile hello.py' 
                stash(name: 'compiled-results', includes: '*.py*')
            }
        }
    }
}
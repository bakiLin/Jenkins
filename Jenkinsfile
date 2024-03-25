pipeline {
    agent any

    triggers {
        pollSCM '* * * * *'
    }

    stages {
        stage('Build') {
            steps {
                sh 'python -m py_compile hello.py' 
                stash(name: 'compiled-results', includes: '*.py*')
            }
        }
    }
}
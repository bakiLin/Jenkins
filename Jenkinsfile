pipeline {
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            agent { 
                node {
                    label 'python-agent'
                }
            }
            steps {
                sh 'python -m py_compile source/hello.py'
            }
        }
        stage('Deliver') {
            agent { 
                node {
                    label 'pyinstaller-agent'
                }
            }
            steps {
                unstash(name: 'compiled-results')
                sh "pyinstaller --onefile hello.py"
            }
        }
    }
}
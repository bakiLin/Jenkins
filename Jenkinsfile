pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'python:2-alpine'
                }
            }
            steps {
                sh 'python -m py_compile source/hello.py'
                stash(name: 'compiled-results', includes: 'source/*.py*')
            }
        }
        stage('Deliver') {
                    agent any

                    environment {
                        VOLUME = '$(pwd)/source:/src'
                        IMAGE = 'cdrx/pyinstaller-linux:python2'
                    }
                    steps {
                        dir(path: env.BUILD_ID) {
                            unstash(name: 'compiled-results')

                            sh "docker run --rm -v ${VOLUME} ${IMAGE} 'pyinstaller -F hello.py'"
                        }
                    }
                    post {
                        success {
                            archiveArtifacts "${env.BUILD_ID}/source/dist/hello"
                            sh "docker run --rm -v ${VOLUME} ${IMAGE} 'rm -rf build dist'"
                        }
                    }
        }
    }
}
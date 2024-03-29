pipeline {
    agent any
    options {
        timestamps()
        disableConcurrentBuilds()
        disableResume()
    }
    stages {
        stage('Restore NuGet For Solution') {
            steps {
                bat "dotnet restore --nologo --no-cache"
            }
        }
        stage('Build Solution') {
            steps {
                bat "dotnet build --nologo -c Release -p:ProductVersion=1.0.${env.BUILD_NUMBER}.0 --no-restore"
            }
        }
    }
    post {
        cleanup {
            cleanWs(deleteDirs: true, disableDeferredWipeout: true, notFailBuild: true)
        }
    }
}
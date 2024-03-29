pipeline {
    agent {
        docker image 'mcr.microsoft.com/dotnet/sdk:8.0'
    }
    options {
        timestamps()
        disableConcurrentBuilds()
        disableResume()
    }
    stages {
        stage('Restore NuGet For Solution') {
            steps {
                sh 'dotnet restore --nologo --no-cache'
            }
        }
        stage('Build Solution') {
            steps {
                sh 'dotnet build --nologo -c Release -p:ProductVersion=1.0.${env.BUILD_NUMBER}.0 --no-restore'
            }
        }
    }
    post {
        cleanup {
            cleanWs(deleteDirs: true, disableDeferredWipeout: true, notFailBuild: true)
        }
    }
}
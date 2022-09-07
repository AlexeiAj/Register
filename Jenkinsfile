pipeline {
    agent any

    stages {
        stage ('Build Image') {
            steps {
                script {
                    dockerapp = docker.build("alexeiaj/register", '-f ./Dockerfile .')
                }
            }
        }
    }
}
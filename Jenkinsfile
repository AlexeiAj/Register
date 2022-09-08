pipeline {
    agent any

    tools {
        gradle '7.5.1'
        jdk 'jdk-17'
    }

    stages {
        stage ('Gradle Build') {
            steps {
//                 sh 'gradle --version'
                sh 'java --version'
            }
        }
    
//         stage ('Build Image') {
//             steps {
//                 script {
//                     dockerapp = docker.build("alexeiaj/register", '-f ./Dockerfile .')
//                 }
//             }
//         }

//         stage ('Push Image') {
//             steps {
//                 script {
//                     docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
//                         dockerapp.push('latest')
//                         dockerapp.push("${env.BUILD_ID}")
//                     }
//                 }
//             }
//         }

//         stage ('Deploy Kubernetes') {
//             environment {
//                 tag_version = "${env.BUILD_ID}"
//             }
//             steps {
//                 withKubeConfig([credentialsId: 'kubeconfig']) {
//                     sh 'sed -i "s/{{tag}}/$tag_version/g" ./k8s/deployment.yaml'
//                     sh 'kubectl apply -f ./k8s/deployment.yaml'
//                 }
//             }
//         }
    }
}
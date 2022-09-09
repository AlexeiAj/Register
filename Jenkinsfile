pipeline {
    agent any

    stages {
//         stage ('Build Image') {
//             steps {
//                 script {
//                     dockerapp = docker.build("alexeiaj/register:${env.BUILD_ID}", '-f ./Dockerfile .')
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

        stage('List pods') {
            steps {
                withKubeConfig([credentialsId: 'kubeconfig']) {
                    sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.24.0/bin/linux/amd64/kubectl"'
                    sh 'chmod u+x ./kubectl'
                    sh './kubectl get pods'
                }
            }
        }

//         stage ('Deploy Kubernetes') {
//             environment {
//                 tag_version = "${env.BUILD_ID}"
//             }
//             steps {
//                 withKubeConfig([credentialsId: 'kubeconfig']) {
//                     sh 'sed -i "s/{{tag}}/$tag_version/g" ./k8s/app.yaml'
//                     sh './kubectl apply -f ./k8s/app.yml'
//                 }
//             }
//         }
    }
}
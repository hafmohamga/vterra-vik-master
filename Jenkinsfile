pipeline {
    agent any
    tools {
        terraform "terraform"
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'hafmoham', url: 'https://github.com/hafmohamga/vterra-vik-master']])
                }
            }
        }
        stage('Azure login'){
            steps{
                withCredentials([azureServicePrincipal('Azure_credentials')]) {
                    sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
                }
            }
        }
        stage('Terraform ') {
            steps {
                script {
                    dir('modules') {
                    sh 'terraform init -upgrade'
                    sh 'terraform apply --auto-approve'
                    }
            }
        }    
    }
}
} 
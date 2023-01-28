pipeline {
    agent any
    parameters {
        booleanParam(name: 'Create', defaultValue: false, description: 'Create infra')
    } 
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('git'){
            steps{
                git branch: 'infra-uat', url: 'https://github.com/krishank98/aws-terraform-cicd-java-springboot-working'
            }
        }
        stage('terraform init'){
            steps{
                sh "ls"
                // sh 'terraform init'
            }
        }
        stage('terraform plan'){
            steps{
                sh "ls"
                // sh 'terraform plan'
            }
        }
        stage('terraform apply'){
            steps{
                sh "ls"
                // sh 'terraform apply --auto-approve'
            }
        }
        stage('terraform destroy'){
            steps{
                sh "ls"
                // sh 'terraform destroy --auto-approve'
            }
        }
}
}


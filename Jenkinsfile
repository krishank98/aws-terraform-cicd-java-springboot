pipeline {
    agent any
    parameters {
        booleanParam(name: 'Create', defaultValue: false, description: 'Create infra')
    } 
   
    stages {
        stage('git'){
            steps{
                git branch: 'infra', url: 'https://github.com/krishank98/aws-terraform-cicd-java-springboot-working'
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
        stage('terraform plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('terraform apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
}
}


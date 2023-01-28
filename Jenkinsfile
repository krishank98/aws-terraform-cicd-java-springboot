pipeline {
    agent any
    parameters {
        booleanParam(name: 'Create', defaultValue: false, description: 'Create infra')
    } 
    
    stages {
        stage('git'){
            steps{
                git branch: 'sonarqube', url: 'https://github.com/krishank98/aws-terraform-cicd-java-springboot-working'
            }
        }
}
}


pipeline {
    agent any
    parameters {
        booleanParam(name: 'Create', defaultValue: false, description: 'Create infra')
    } 
    
    stages {
        stage('git'){
            steps{
                git branch: 'jenkins', url: 'https://github.com/krishank98/aws-terraform-cicd-java-springboot-working'
            }
        }
        stage('Build') {
            steps {
                sh '/usr/local/sdkman/candidates/maven/current/bin/mvn install -DskipTests'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            }

}
}
}

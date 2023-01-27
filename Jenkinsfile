pipeline {
    agent any
    parameters {
        booleanParam(name: 'Push', defaultValue: false, description: 'True to push to dockerhub')
    } 
    environment {
      DOCKER_TAG = getVersion()
    }
    stages {
        stage('git'){
            steps{
                git branch: 'frontend-gateway', url: 'https://github.com/krishank98/aws-terraform-cicd-java-springboot-working'
            }
        }
        stage('build') {
                 
            steps {
                  sh '/usr/local/sdkman/candidates/maven/current/bin/mvn install -DskipTests'
            }
            
            }
        
        stage('docker-build'){
            steps{
                sh 'ls'
                // sh 'docker build . -t krish2356/piggymetrics-gateway:${DOCKER_TAG}'
                sh 'docker build . -t krish2356/piggymetrics-gateway'
            }
        }
       stage('dockerhub push'){
                  when {
                   expression { return params.Push }
               }
           
            steps{
                withCredentials([string(credentialsId: 'pass', variable: 'password')]) {
                     sh "docker login -u krish2356 -p ${password}"
                 }
                 
                // sh "docker push krish2356/piggymetrics-gateway:${DOCKER_TAG}"
                sh "docker push krish2356/piggymetrics-gateway"
            }
           
       }
       stage ('Trigger-Piggymetices-Dev') {
            steps {
                build job: 'piggymetrics'
            }
        }
    }
}
def getVersion(){
    def commitHash = sh label: '', returnStdout: true, script: 'git rev-parse --short HEAD'
    return commitHash
}
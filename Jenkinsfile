pipeline {
    agent any 
    stages{
    stage('checkout the git repo') {
      steps {
        git 'https://github.com/arunkumargowda3/staragile.git'
      }
    }
    stage('maven clean package'){
      steps{
        sh 'mvn clean package'
      }
    }
    stage('build Docker Images') {
      steps {
          sh ' docker build -t arunkumarkn/addressbook .'
      }
    }
    stage('docker push image to docker hub'){
        withCredentials([usernamePassword(credentialsId: 'docker_hub_passwd', passwordVariable: 'docker_passwd_var', usernameVariable: 'docker_username_var')]) {
            sh 'docker login -u ${docker_username_var} -p ${docker_passwd_var}'
            }
    }
        }
}

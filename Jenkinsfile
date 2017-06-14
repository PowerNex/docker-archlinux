pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git 'https://github.com/PowerNex/docker-archlinux'
      }
    }
    stage('build') {
      steps {
        sh 'docker build -t "wild/archlinux" .'
      }
    }
    stage('deploy') {
      steps {
        sh 'docker push "wild/archlinux"'
      }
    }
  }
}
pipeline {
  agent any

  stages {
    stage('build') {
      steps {
        echo 'Building a docker image'
        sh './scripts/build'
      }
    }
    stage('deploy') {
      steps {
        echo 'Deployment is in progresss'
        sh './scripts/deploy'
      }
    }
  }

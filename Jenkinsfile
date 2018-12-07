pipeline {
  agent {
    node {
      label 'kube'
    }

  }
  stages {
    stage('compile') {
      parallel {
        stage('compile') {
          steps {
            sh 'mvn clean instal'
          }
        }
        stage('junit') {
          steps {
            sh 'mvn clean test'
          }
        }
      }
    }
    stage('final') {
      steps {
        echo 'bye'
      }
    }
  }
}
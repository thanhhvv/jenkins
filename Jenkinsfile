pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git url: 'https://github.com/thanhhvv/jenkins.git', branch: 'main'
      }
    }
    stage('Install') {
      steps {
        echo 'First step'
      }
    }
    stage('Test') {
      steps {
        echo 'Second step'
      }
    }
    stage('Build') {
      steps {
        echo 'Third step'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Fourth step'
      }
    }
  }
}

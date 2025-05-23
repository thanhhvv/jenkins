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
        sh 'npm install'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Build') {
      steps {
        sh 'npm run build'
      }
    }
    stage('Deploy') {
      steps {
        sh './deploy.sh'  // or use rsync, docker, etc.
      }
    }
  }
}

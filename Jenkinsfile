pipeline {
  agent { docker { image 'python:3.6.1-alpine' } }
    stages {
    stage('build') {
      steps {
        sh 'echo "here ===>> installation of dependencies"'
        sh 'pip install -r requirements.txt'
      }
    }
    stage('test') {
      steps {
        sh 'python hello.test.py'
      }   
    }
    stage('deploy') {
        steps {
            sh 'echo "here ===>>> " '
        }
    }
  }
}
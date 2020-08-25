pipeline {
  agent any
    stages {
    stage('build') {
      steps {
        sh 'echo "here ===>> installation of dependencies"'
        sh 'python3 -m venv env'
        sh 'source env/bin/activate'
        sh 'echo "permission --->>> "'
        sh 'pip3 install --user -r requirments.txt' 
      }
    } 
    stage('test') {
      steps {
        sh 'python hello.test.py'
      }   
      post {
        always {
          junit 'test-reports/*.xml'
        }
      } 
    }
    stage('deploy') {
        steps {
            sh 'echo "here ===>>> " '
        }
    }
  }
}
pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        git(url: 'https://github.com/jenkins-docs/simple-node-js-react-npm-app.git', branch: 'master')
        sh 'npm install'
      }
    }
    stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
    }
  
    stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
    }
}

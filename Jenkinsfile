pipeline {
  agent any
   tools {nodejs "nodejs"}
  stages {
    stage('build') {
      steps {
        git(url: 'https://github.com/jenkins-docs/simple-node-js-react-npm-app.git', branch: 'master')
        sh 'npm install'
      }
    }

  }
}

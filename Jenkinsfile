pipeline {
  agent any
  stages {
    stage ('Memory Collection') {
      steps {
        script {
             sshagent(credentials: ['sshDatapump']) {
                            sh """
            echo $sshDatapump
               """
                     }
        }
      } 
    }
  }
  }
 

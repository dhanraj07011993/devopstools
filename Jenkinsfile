pipeline {
  agent any
  stages {
    stage ('Memory Collection') {
      steps {
        script {
             sshagent(credentials: ['sshDatapump']) {
                            sh """
                for host in 54.236.16.183 3.80.206.241
                do
                scp ${WORKSPACE}/dpmc.sh $host:~/
                cd ~
                chmod 755 dpmc.sh
                ./dpmc.sh
                done
               """
                     }
        }
      } 
    }
  }
  }
 

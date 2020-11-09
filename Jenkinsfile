pipeline {
  agent any
  stages {
    stage ('Memory Collection') {
      steps {
        script {
           dir ( "${WORKSPACE}" ) {
            sshagent(credentials: ['sshDatapump']) {
              env.HOME="${WORKSPACE}"
              sh """
                for host in 54.236.16.183 3.80.206.241
                do
                scp ${WORKSPACE}/dpmc.sh ec2-user@$host:~/
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
  }
 

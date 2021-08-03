pipeline {
    agent any 
    stages {
        stage('Build') {
            agent { 
                docker 'docker:latest'
	    }
            steps {
                sh "./script1.sh" 
            }
        }
        stage('Test') { 
            steps {
                sh "./script2.sh"
            }
        }
        stage('Deploy') { 
            steps {
                sh "./script3.sh"
            }
        }
    }
}

pipeline {
    agent none 
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
            agent any
            steps {
                sh "./script2.sh"
            }
        }
        stage('Deploy') {
            agent any 
            steps {
                sh "./script3.sh"
            }
        }
    }
}

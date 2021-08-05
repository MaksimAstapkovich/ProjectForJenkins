pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
		sh "tree"
                sh "docker build -t ass ."
            }
        }
        stage('Test') { 
            steps {
                sh "docker run -d -p 3333:5000 ass"
		sh "docker ps"
		sh "echo $MY_IP_I"
		sh "curl ${MY_IP_I}:3333"
		sh "content=`curl ${MY_IP_I}:3333`
			res=$(echo $content | grep World)
			if [[ $res ]]
			then
			echo "Tests passed"
			else
			docker rm -f `docker ps | grep ass | cut -d" " -f1`
			exit 1
			fi
		"
		sh "docker rm -f `docker ps | grep ass | cut -d" " -f1`"
            }
        }
        stage('Deploy') {
            steps {
                sh "echo 3"
            }
        }
    }
}

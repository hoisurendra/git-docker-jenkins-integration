pipeline {
    agent any

    stages {
        stage('Docker Image Build') {
            steps {
                sh 'docker build -t custom-nginx-image .'
            }
        }

        stage('Docker Container Run') {
            steps {
                sh 'docker run -d -p 80:80 custom-nginx-image'
            }
        }
    }

    post {
        always {
            echo "Build id completed"
        }
        
        success {
            echo "Docker Image build is successful"
        }
        
        failure {
            echo "Docker Image build is failed"
        }
    }
}

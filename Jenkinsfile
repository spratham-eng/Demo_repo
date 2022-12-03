pipeline {
    
    agent any
    stages {
        stage('Checking git logs') {
            steps {
                echo 'Hello World git log'
                sh 'chmod +x test_file.sh'
                sh './test_file.sh > log_file.txt'
            }
        }
    }
}

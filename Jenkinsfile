pipeline {
    agent { label 'ubuntu'}
    stages {
        stage('Checking git logs') {
            steps {
                echo 'Hello World git log'
                sh 'chmod +x test_file.sh'
                echo 'GIT_AUTHOR_NAME %GIT_AUTHOR_NAME%'
                sh './test_file.sh > log_file.txt'
            }
        }
    }
}

pipeline {
    agent { label 'ubuntu'}

    stages {
        stage('Checking git logs') {
            steps {
                echo 'Hello World git log'
                sh 'test_file.sh'
            }
        }
    }
}

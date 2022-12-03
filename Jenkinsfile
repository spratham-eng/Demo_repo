pipeline {
    agent { label 'ubuntu'}

    stages {
        stage('Checking git logs') {
            steps {
                echo 'Hello World git log'
                chmod +x 'test_file.sh'
                sh 'test_file.sh'
            }
        }
    }
}

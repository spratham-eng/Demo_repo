pipeline {
    agent { label 'ios'}
    environment {
        LC_ALL = 'en_US.UTF-8'
    }
    stages {
        
        stage("Run Release") {
            steps{
                dir("CICD_PS_App") {
                    sh 'fastlane release_app'
                }
            }
        }
    }  
}
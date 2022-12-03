pipeline {
    agent { label 'ubuntu'}
    stages {
        stage('Checking git logs') {
            steps {
                sh """ rm -rf myrepo || echo
                    git clone $git_url myrepo
                 cd myrepo
                 echo "Commit ID, Author Email, Author Name, Commit Message" > git_report.csv
                 echo "" >> git_report.csv
                 git log --format='%H,%ae,%an,%s' --since="$n days ago" >> git_report.csv
                """
            }
        }
  
    }
         post {
        always {
            archiveArtifacts artifacts: 'git_report.csv', onlyIfSuccessful: true
        }
    }
}

pipeline {
    agent any
    parameters {
        string(
            name: 'repo_link',
            defaultValue: '',
            description: 'Enter the URL of git repo'
        )
        
        string(
            name: 'n',
            defaultValue: '20',
            description: 'Enter the number of days'
        )
    }
    stages {
        stage('Checking git logs') {
            steps {
                sh """ rm -rf myrepo || echo
                    git clone ${repo_link} myrepo
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
            archiveArtifacts artifacts: 'myrepo/git_report.csv', onlyIfSuccessful: true
        }
    }
}

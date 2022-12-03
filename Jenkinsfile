pipeline {
    agent { label 'ubuntu'}
    stages {
        stage('Checking git logs') {
            steps {
                sh """ rm -rf myrepo || echo
                    git clone $git_url myrepo
                 cd myrepo
                 pwd
                 git log --format='%H,%ae,%an,%s' --since="$n days ago"
                """
            }
        }
    }
}

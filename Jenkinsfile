pipeline {
    agent { label 'ubuntu'}
    stages {
        stage('Checking git logs') {
            steps {
                sh """ git clone $git_url
                 cd_path=$(echo ${git_url} | awk -F "\/" '{print $NF}' )
                 cd $cd_path
                 pwd
                 git log --format='%H,%ae,%an,%s' --since="$n days ago"
                """
            }
        }
    }
}

pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '${sha1}']], extensions: [], userRemoteConfigs: [[credentialsId: 'github_bperhaps', name: 'origin', refspec: '+refs/pull/*:refs/remotes/origin/pr/*', url: 'https://github.com/bperhaps/jenkins-test-2021-pick-git']]])
            }
        }

        stage('sonaqube anlysis') {
            steps {
                withSonarQubeEnv('pick-git-sonarqube') {
                    sh'''
                        cd backend/pick-git
                        /var/jenkins_home/tools/hudson.plugins.sonar.SonarRunnerInstallation/pick-git-sonarqube/bin/sonar-scanner \
                        -D sonar.login=e67760bad24c56a17b106590e9c0c1e757a30bca \
                        -D sonar.projectKey=pick-git-sonarqube \
                        -D sonar.exclusions=resources/**,**/*.java \
                        -D sonar.host.url=http://52.78.17.123:9000/
                    '''
                }
            }
        }
        
        stage('Sonarqube') {
            steps {
                script {
                    def qg = waitForQualityGate();
                    echo "${qg}"
                }
            }
        }
    }
}

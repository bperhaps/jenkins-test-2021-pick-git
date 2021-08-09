pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '${branch_name}']], extensions: [[$class: 'SubmoduleOption', disableSubmodules: false, parentCredentials: true, recursiveSubmodules: true, reference: '', trackingSubmodules: true]], userRemoteConfigs: [[credentialsId: 'github_bperhaps', url: 'https://github.com/bperhaps/jenkins-test-2021-pick-git/']]])
            }
        }

        stage('sonaqube anlysis') {
            steps {
                withSonarQubeEnv('pick-git-sonarqube') {
                    sh'''
                        cd backend/pick-git
                        ./gradlew sonarqube \
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

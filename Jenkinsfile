pipeline {
    // 스테이지 별로 다른 거
    agent any

     environment {
       INSTANCE_PEM = credentials('instances-pem')
     }

    stages {
//        // 레포지토리를 다운로드 받음
//        stage('Prepare') {
//            agent any
//
//            steps {
//                echo 'Clonning Repository'
//
//                git url: 'https://github.com/bperhaps/jenkins-test-2021-pick-git/',
//                    branch: 'master',
//                    credentialsId: 'pickgit'
//            }
//
//            post {
//                // If Maven was able to run the tests, even if some of the test
//                // failed, record the test results and archive the jar file.
//                success {
//                    echo 'Successfully Cloned Repository'
//                }
//            }
//        }

        // aws s3 에 파일을 올림
        stage('build backend') {
          steps {
            echo 'build backend'

            dir ('./backend/pick-git'){
                sh '''
                ./gradlew -x test clean build
                '''
            }
          }

          post {
              success {
                  echo 'Successfully build backend'
              }

              failure {
                  echo 'I failed build backend :('
              }
          }
        }

        stage('Test Backend') {
//           agent {
//             docker {
//               image 'node:latest'
//             }
//           }
          steps {
            echo 'Test Backend'

            dir ('./backend/pick-git'){
              sh '''
                ./gradlew test
                '''
            }
          }

          post {
            failure {
              error 'fail to test backend'
            }
          }
        }

        stage('Deploy Backend') {
          agent any

          steps {
            echo 'Build Backend!!!'
          }

          post {
            success {
              echo 'Build success :)'
            }
          }
        }
    }
}

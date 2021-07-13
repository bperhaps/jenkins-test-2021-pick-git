pipeline {
    // 스테이지 별로 다른 거
    agent any

    triggers {
        pollSCM('*/3 * * * *')
    }

//     environment {
//       AWS_ACCESS_KEY_ID = credentials('awsAccessKeyId')
//       AWS_SECRET_ACCESS_KEY = credentials('awsSecretAccessKey')
//       AWS_DEFAULT_REGION = 'ap-northeast-2'
//       HOME = '.' // Avoid npm root owned
//     }

    stages {
        // 레포지토리를 다운로드 받음
        stage('Prepare') {
            agent any

            steps {
                echo 'Clonning Repository'

                git url: 'https://github.com/bperhaps/jenkins-test-2021-pick-git/',
                    branch: 'master',
                    credentialsId: 'pickgit'
            }

            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    echo 'Successfully Cloned Repository'
                }

                always {
                  echo "i tried..."
                }

                cleanup {
                  echo "after all other post condition"
                }
            }
        }

        // aws s3 에 파일을 올림
        stage('build backend') {
          steps {
            echo 'Deploying Frontend'
            // 프론트엔드 디렉토리의 정적파일들을 S3 에 올림, 이 전에 반드시 EC2 instance profile 을 등록해야함.
            dir ('./backend/pick-git'){
                sh '''
                ./gradle -x test clean build
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
                ./gradle test
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
              echo 'Build success :\)'
            }
          }
        }
    }
}

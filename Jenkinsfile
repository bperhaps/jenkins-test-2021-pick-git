pipeline {
    // 스테이지 별로 다른 거
    agent any

    stages {
        stage('first') {
            steps {
                echo 'test1'
            }
        }

        stage('second') {
            steps {
                echo 'test2'
            }
        }
    }

    stages {
        stage('first') {
            steps {
                echo 'test1'
            }
        }

        stage('second') {
            steps {
                echo 'test2'
            }
        }
    }

//    stages {
//        stage('build backend') {
//          when { changeset "backend/*" }
//
//          steps {
//            echo 'build backend...'
//
//            dir ('./backend/pick-git'){
//                sh '''
//                ./gradlew -x test clean build
//                '''
//            }
//          }
//        }
//        stage('build frontend') {
//            when { changeset "frontend/*" }
//
//            steps {
//                echo 'build frontend'
//
//                dir ('./frontend'){
//                    sh '''
//                            yarn
//                            yarn build
//                        '''
//                }
//            }
//
//            post {
//                success {
//                    echo 'Successfully build frontend'
//                }
//            }
//        }
//        stage('build s3proxy') {
//            when { changeset "s3-proxy/*" }
//
//            steps {
//                echo 'build s3-proxy'
//
//                dir ('./s3-proxy/s3-proxy'){
//                    sh '''
//                        ./gradlew -x test clean build
//                    '''
//                }
//            }
//
//            post {
//                success {
//                    echo 'Successfully build s3-proxy'
//                }
//            }
//        }
//        stage('test backend') {
//            when { changeset "backend/*" }
//
//            steps {
//                echo 'build backend2'
//
//                dir ('./backend/pick-git'){
//                    sh '''
//                ./gradlew -x test clean build
//                '''
//                }
//            }
//
//            post {
//                success {
//                    dir('./backend/pick-git/build/libs'){
//                        sh 'echo $INSTANCE_PEM'
//                    }
//
//                    echo 'Successfully build backend'
//                }
//
//                failure {
//                    echo 'I failed build backend :('
//                }
//            }
//        }
//        stage('test frontend') {
//            when { changeset "backend/*" }
//
//            steps {
//                echo 'build backend2'
//
//                dir ('./backend/pick-git'){
//                    sh '''
//                ./gradlew -x test clean build
//                '''
//                }
//            }
//
//            post {
//                success {
//                    dir('./backend/pick-git/build/libs'){
//                        sh 'echo $INSTANCE_PEM'
//                    }
//
//                    echo 'Successfully build backend'
//                }
//
//                failure {
//                    echo 'I failed build backend :('
//                }
//            }
//        }
//        stage('test s3proxy') {
//            when { changeset "backend/*" }
//
//            steps {
//                echo 'build backend2'
//
//                dir ('./backend/pick-git'){
//                    sh '''
//                ./gradlew -x test clean build
//                '''
//                }
//            }
//
//            post {
//                success {
//                    dir('./backend/pick-git/build/libs'){
//                        sh 'echo $INSTANCE_PEM'
//                    }
//
//                    echo 'Successfully build backend'
//                }
//
//                failure {
//                    echo 'I failed build backend :('
//                }
//            }
//        }
//        stage('deploy backend') {
//            when { changeset "backend/*" }
//
//            steps {
//                echo 'build backend2'
//
//                dir ('./backend/pick-git'){
//                    sh '''
//                ./gradlew -x test clean build
//                '''
//                }
//            }
//
//            post {
//                success {
//                    dir('./backend/pick-git/build/libs'){
//                        sh 'echo $INSTANCE_PEM'
//                    }
//
//                    echo 'Successfully build backend'
//                }
//
//                failure {
//                    echo 'I failed build backend :('
//                }
//            }
//        }
//        stage('deploy frontend') {
//            when { changeset "backend/*" }
//
//            steps {
//                echo 'build backend2'
//
//                dir ('./backend/pick-git'){
//                    sh '''
//                ./gradlew -x test clean build
//                '''
//                }
//            }
//
//            post {
//                success {
//                    dir('./backend/pick-git/build/libs'){
//                        sh 'echo $INSTANCE_PEM'
//                    }
//
//                    echo 'Successfully build backend'
//                }
//
//                failure {
//                    echo 'I failed build backend :('
//                }
//            }
//        }
//        stage('deploy s3proxy') {
//            when { changeset "backend/*" }
//
//            steps {
//                echo 'build backend2'
//
//                dir ('./backend/pick-git'){
//                    sh '''
//                ./gradlew -x test clean build
//                '''
//                }
//            }
//
//            post {
//                success {
//                    dir('./backend/pick-git/build/libs'){
//                        sh 'echo $INSTANCE_PEM'
//                    }
//
//                    echo 'Successfully build backend'
//                }
//
//                failure {
//                    echo 'I failed build backend :('
//                }
//            }
//        }
//
//        stage('Test Backend_dev') {
////           agent {
////             docker {
////               image 'node:latest'
////             }
////           }
//          steps {
//            echo 'Test Backend'
//
//            dir ('./backend/pick-git'){
//              sh '''
//                ./gradlew test
//                '''
//            }
//          }
//
//          post {
//            failure {
//              error 'fail to test backend'
//            }
//          }
//        }
//
//        stage('Deploy Backend_dev') {
//          agent any
//
//          steps {
//            echo 'Build Backend!!!'
//          }
//
//          post {
//            success {
//              echo 'Build success :)'
//            }
//          }
//        }
//    }
}

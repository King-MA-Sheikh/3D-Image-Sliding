@Library("Shared") _

pipeline {
    agent { label "vinod" }

    stages {

        stage("Hello") {
            steps{
                script{
                    hello()
                    echo "welcome to the world of IT Tech."
                }
            }
        }
        
        stage("Code") {
            steps {
                script {
                    clone('https://github.com/King-MA-Sheikh/3D-Image-Sliding.git', 'main')
                }
            }
        }

        stage("Build") {
            steps {
                script {
                    sh '''
                        export PATH=$PATH:/usr/bin
                        docker --version
                        docker build -t 3dimagesliding:latest .
                    '''
                }
            }
        }

        stage("Push to DockerHub") {
            steps {
                script {
                    docker_push("3dimagesliding", "latest", "maspro900")
                }
            }
        }

        stage("Deploy") {
            steps {
                echo "Deploying container"
                sh 'docker compose down || true'
                sh 'docker compose up -d'
            }
        }
    }
}

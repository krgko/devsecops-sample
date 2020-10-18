/* groovylint-disable CompileStatic, LineLength, NestedBlockDepth, NglParseError */
pipeline {
    environment {
        DOCKER_REGISTRY = 'kowpun123/sample'
        DOCKER_USERNAME = ''
        DOCKER_PASSWORD = ''
        // REGISTRY_CREDENTIAL = 'dockerhub'
    }
    agent any
    stages {
        stage('Cloning Git') {
            steps {
                git 'https://github.com/krgko/devsecops-sample.git'
            }
        }
        stage('Build and Publish Image') {
            steps {
                sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                sh 'docker build -t $DOCKER_REGISTRY:$BUILD_NUMBER .'
                sh 'docker push $DOCKER_REGISTRY:$BUILD_NUMBER'
            }
        }
        stage('Security Scan') {
            steps {
                sh 'echo "$DOCKER_REGISTRY:$BUILD_NUMBER `pwd`/Dockerfile" > anchore_images'
                anchore engineCredentialsId: 'anchore', engineurl: 'http://devsecops-sample_api_1_4cd57fc34bbb:8228/v1', name: 'anchore_images'
            }
        }
        stage('Cleanup') {
            steps {
                sh 'docker rmi $(docker images | grep $DOCKER_REGISTRY | awk \'{print $3}\' | head -n 1) -f'
            }
        }
    }
}

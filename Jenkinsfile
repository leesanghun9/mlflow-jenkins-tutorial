pipeline {
    agent {
        docker {
            image 'python:3.10'
        }
    }
    environment {
        MLFLOW_TRACKING_URI = 'http://http://127.0.0.1:5000'
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/leesanghun9/mlflow-jenkins-tutorial.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Train and Log Model') {
            steps {
                sh 'python train_and_log.py'
            }
        }
    }
}

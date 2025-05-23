pipeline {
    agent any

    environment {
        PROJECT_ID = 'hovietvuthanh-project'  // thay bằng project thực tế
        GOOGLE_APPLICATION_CREDENTIALS = 'hovietvuthanh-project-c53d796e3e8e.json'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/thanhhvv/jenkins.git', branch: 'main'
            }
        }

        stage('Deploy') {
            steps {
                withCredentials([file(credentialsId: 'FIREBASE_KEY_JSON', variable: 'FIREBASE_KEY')]) {
                    sh '''
                        export GOOGLE_APPLICATION_CREDENTIALS=/absolute/path/to/credentials/file.json
firebase deploy --only hosting --project=hovietvuthanh-project
                    '''
                }
            }
        }
    }

    post {
        success {
            echo 'Deploy thành công'
        }
        failure {
            echo 'Deploy thất bại'
        }
    }
}

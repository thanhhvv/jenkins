pipeline {
    agent any

    stages {
        stage('Pre-check: Test') {
            steps {
                echo "🔍 Đang chạy kiểm tra index.html..."
                sh 'chmod +x test/test.sh'
                sh './test/test.sh'
            }
        }

        stage('Deploy to Server') {
            steps {
                echo "🚀 Đang thực hiện deploy đến server..."
                sshagent(credentials: ['ssh-cred-id']) {
                    sh '''
                        ssh user@your-server "mkdir -p ~/deploy"
                        scp app/index.html user@your-server:~/deploy/index.html
                    '''
                }
            }
        }
    }

    post {
        success {
            echo "✅ Deploy thành công!"
        }
        failure {
            echo "❌ Có lỗi xảy ra trong pipeline!"
        }
    }
}

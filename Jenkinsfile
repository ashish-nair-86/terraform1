pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }
    environment {
        ACCESS_KEY = credentials('AWS_ACCESS_KEY_ID')
        SECRET_KEY = credentials('AWS_SECRET_KEY')
    }
    stages {
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan -var 'access_key=$ACCESS_KEY' -var 'secret_key=$SECRET_KEY' -out terraform.tfplan'
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply terraform.tfplan --auto-approve'
            }
        }
    }
}

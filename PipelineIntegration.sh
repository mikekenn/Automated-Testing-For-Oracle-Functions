pipeline {
    agent any
    stages {
        stage('Run Oracle Function Tests') {
            steps {
                script {
                    sh 'sqlplus user/pass@oracledb @run_tests.sql'
                }
            }
        }
    }
}

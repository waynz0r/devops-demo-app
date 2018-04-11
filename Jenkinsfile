pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                ansiColor('xterm') {
                    echo 'Building..'
                    sh '''
                    make
                    '''
                }
            }
        }
    }
}

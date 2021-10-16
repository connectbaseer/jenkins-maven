node{

    stage('Clone Repository'){
        checkout scm
    }

    stage('Build Maven'){
        sh 'mvn clean install package'
    }

}
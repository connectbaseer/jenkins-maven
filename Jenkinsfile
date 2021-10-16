node{

    stage('Clone Repository'){
        scm checkout
    }

    stage('Build Maven'){
        sh 'mvn clean install package'
    }

}
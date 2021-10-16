node{
    def commit_id
    stage('Clone Repository'){
        checkout scm
        sh "git rev-parse --short HEAD > .git/commit-id"
        commit_id = readFile('.git/commit-id').trim()
    }

    stage('Build Maven'){
        sh 'mvn clean install package'
    }

    stage('Build Docker Image'){
        def customImage = docker.build("abdul8423/jenkins_maven:${commit_id}")
        customImage.push()
    }

}
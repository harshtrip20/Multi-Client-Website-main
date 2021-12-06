pipeline{
agent{label 'master'}
tools{maven 'MCW'}
stages{
stage('Checkout'){
steps{
git branch: 'master', url: 'https://github.com/harshtrip20/Multi-Client-Website-main.git'
}
}
stage('Build'){
steps{
bat 'mvn compile'
}
}
stage('Package'){
steps{
bat 'mvn package'
}
}
stage('Create Image')
{
steps{
bat 'docker build -t image_name:v1 .'
}
}
stage('Create Container')
{
steps{
bat 'docker container create -p 8081:8081 --name container_name image_name:v1'
}
}
stage('Start Container')
{
steps{
bat 'docker start container_name'
}
}
}
}

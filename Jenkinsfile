node {
    stage('SCM'){
        git 'git@github.com:lyogi4091/Ex-1.git'
    stage('Building Docker image'){  
                sh 'sudo docker build -t ubuntu_image_remotely .';
                sh 'sudo docker run -it -d --name testcontainer_remote_ex1 -v /home/user/Ex-1:/opt ubuntu_image_remotely';
                
		try{
		sh 'sudo docker exec testcontainer_remote_ex1 gcc -o /opt/yogesh /opt/file.c';
		sh 'sudo docker exec testcontainer_remote_ex1 ./opt/yogesh'
            }catch(x){
                println "my gcc compilation failed with error"
            }
            
        }
    }
}

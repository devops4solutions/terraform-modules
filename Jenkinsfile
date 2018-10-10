pipeline {

	agent any
	
	stages {
		stage('checkout') {
			steps {
				git url: 'https://github.com/devops4solutions/terraform-modules.git'
			}
		}

		stage('Assuming IAM role') {
			steps {
				
					withAWS(role: jenkins, roleAccount: 531376854494 {
						
						{
							sh 'terraform init'
							sh 'terraform plan'
						}
					
					}
				}
		 }

		//stage('Set Terraform path') {
            	//	steps {
                //		script {
                //   			def tfHome = tool name: 'Terraform'
                //  			env.PATH = "${tfHome}:${env.PATH}"
                //			}
                //		sh 'terraform --version'
               
               
            	//	}
       		 //}
		//stage('Infrastructure provisioning'){
		//	steps {
		//		dir('dev')
		//		{
		//		sh 'terraform init'
		//		sh 'terraform plan' }
		//		//sh 'terraform apply'
		//	}
		//}
	}
}


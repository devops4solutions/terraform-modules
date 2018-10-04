pipeline {

	agent any
	
	stages {
		stage('checkout') {
			steps {
				git url: 'https://github.com/devops4solutions/terraform-modules.git'
			}
		}

		//stage('Assuming IAM role') {
		//	steps {
		//		script {
		//			ROLE_ARN=${jenkins}


		//			set +x
		//			aws sts assume-role --role-arn ${ROLE_ARN} \
		//			--role-session-name jenkins | \
        	//			grep -w 'AccessKeyID\|SecretAccessKey\|SessionToken' | \
        	//			awk '{print $2}' | sed 's/\"//g;s/\,//' > awscre;\
       		//			export AWS_ACCESS_KEY_ID='sed -n '3p' awscre' ;\
        	//			export AWS_SECRET_ACCESS_KEY='sed -n '1p' awscre';\
        	//			export AWS_SECURITY_TOKEN='sed -n '2p' awscre'
  
		//			set -x
		//			}
		//		}
		// }

		stage('Set Terraform path') {
            		steps {
                		script {
                    			def tfHome = tool name: 'Terraform'
                    			env.PATH = "${tfHome}:${env.PATH}"
                			}
                		sh 'terraform --version'
               
               
            		}
       		 }
		stage('Infrastructure provisioning'){
			steps {
				dir('dev')
				{
				sh 'terraform init'
				sh 'terraform plan' }
				//sh 'terraform apply'
			}
		}
	}
}


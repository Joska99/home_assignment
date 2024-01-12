<h1> Jenkins CI/CD - Deploy Helm package to Minikube </h1>

<h2>Description</h2>

Jenkins CI/CD pipeline, \
Triggers from GitHub WebHook on "Pull Request" to "main" branch, \
Jenkins run job on agent, Build Docker image and push to Private ECR, creates Helm package and push to Private ECR and Deploy Helm package to Minikube cluster

![DIAGRAM_PNG](https://github.com/Joska99/home_assignment/blob/main/diagram.drawio.png)

<h2>Requirements</h2>

- Jenkins controller+agent
- Provide secret to Jenkins ec2_minikube_production (secret file), ecr-registry (secret String), ecr-user-pswd (secret String) 
- GitHub repository
- Implement Feature Branching strategy "Feature -> main"
- Connect and Configure WebHook on Pull Request to main
- Private ECR
- Instance with Minikube 


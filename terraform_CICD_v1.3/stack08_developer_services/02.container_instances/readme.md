# OCI Container Instances enables you to easily run applications on serverless compute optimized for containers.

Using Container Instances, easily launch one or more containers with flexibility to specify compute shape, resource allocation, networking, and other optional configurations. Container Instances run on a dedicated environment with strong isolation for improved security.Pay only for the CPU and memory resources at the same price as "regular" OCI Compute, making Container Instances the best value option for running containers in cloud.

## Pre requisite

1.Create IAM policies for container instance
2. Create a Repository (Public or Private)
3. To Pull and Push Nginx image, Run below commands in OCI cloud shell.
Step 1:docker login iad.ocir.io (region key)
Step2 :idennsb6k3kt/Default/username ( Objectstorage namespace ,default domain, username) 
Step3: Auth token (Password)            
Step 4: docker pull nginx 
Step5 : docker images    
step6: docker tag 021283c8eb95 iad.ocir.io/idennsb6k3kt/repo-nginx:latest  (collect image id from nginx image which we pushed)      
#Step7: docker push iad.ocir.io/idennsb6k3kt/repo-nginx:latest   
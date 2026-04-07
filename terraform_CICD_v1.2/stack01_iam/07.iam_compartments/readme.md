### Compartments

### Pre-requesite

Provide the compartment_ocid to be deployed ALL resources.

### Run the Terraform

Go to OCI console >> Developer Services >> Resource Manager >> Stacks

Select the right compartment ( where to be deployed)

Create Stack >> Select the Artificates >> Upload
Next >> 
Create >>
Plan >>
Apply >>
Destroy >> ( Note: if really not requied )

### Compartments will be created this terraform


This code creates the list of compartments under tenancy with their respective child compartments 
following list of compartments are created 

1 security

2 monitoring

3 network

4 nonprod_hub


6 nonprod
  1. nonprod_app
    

  2. nonprod_db
         

### Deploy via GitHub Action 
Once the pull request is created, GitHub action workflow will be triggered, check and verify the terraform plan output.

Once the terraform plan is successful, merge the pull request, after merging the pull request to development branch, action workflow will trigger the terraform apply job.

### TO Verify
Go to OCI Console >> Identify & Security >> Identity >> Compartments >> select the right compartment

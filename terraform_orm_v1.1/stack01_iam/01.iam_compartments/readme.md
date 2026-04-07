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

1 prod_hub

2 nonprod_hub

3 network

4 monitoring

5 security

6 nonprod
  1. nonprod_dev
     1. appdev
     2. dbdev

  2. nonprod_tst
     1. apptst
     2. dbtst


7 prod
  1. appprod
  2. dbprod          

### Deploy via GitHub Action 
Once the pull request is created, GitHub action workflow will be triggered, check and verify the terraform plan output.

Once the terraform plan is successful, merge the pull request, after merging the pull request to development branch, action workflow will trigger the terraform apply job.

### TO Verify
Go to OCI Console >> Identify & Security >> Identity >> Compartments >> select the right compartment

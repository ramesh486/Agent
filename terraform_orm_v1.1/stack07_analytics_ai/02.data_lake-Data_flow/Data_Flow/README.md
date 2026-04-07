# terraform-oci-data-flow

 # Oracle Cloud Infrastructure Data Flow is a fully managed Spark service that lets you develop and run big data analytics, regardless of where your data resides, without having to deploy or manage a big data cluster. 

# These terraform scripts deploy an OCI Data Flow application environment.

# You can choose to deploy a demo Python Spark application which is described later.

## Prerequisites

# - Permission to create user groups and iam policies in tenancy.
  
# - Quota to create the following resources: 1 OCI Data Flow, 2 Object Storage buckets.


## Demo application - both .py and .csv files to be uploaded in buckets.

# In this Terraform stack, choose to deploy the demo Python Spark application which is part of the Oracle LiveLab [_Sample Python Application with OCI Data Flow_](https://apexapps.oracle.com/pls/apex/dbpm/r/livelabs/view-workshop?wid=844). For this purpose, keep the variable `deploy_demo_application` as `true`.

# The application in question is used to read a sample CSV file from Object Storage, clean the data and save it in Parquet format to Object Storage.
Introduction

This module assist in provisioning OCI Policies and adding statements to those policies.

Solution

The module covers the following usecases:

    Creating one or multiple policies for the Developement Environment and adding statements to those policies.

Prerequisites
IMPORTANT: Below group should exist, else you will get ERROR
 SYNTAX: DOMAIN_NAME/GROUP

 'default'/'Auditors'
 'default'/'CostAdmins'
 'default'/'CredAdmins'
 'default'/'DatabaseAdmins'
 'default'/'EmailFamilyAdministrator'
 'default'/'IAMAdmins'
 'default'/'IntegrationAdmins'
 'default'/'IntegrationDevelopers'
 'default'/'IntegrationViewers'
 'default'/'NetworkAdmins
 'default'/'ObjectStorageAdmins' 
 'default'/'ObjectStorageReaders'
 'default'/'ObjectStorageWriters'
 'default'/'SecurityAdmins'
 'default'/'SysOpsTeam'



Create the following before using this module:

    Creat Groups

    Create Compartments

Getting Started

The following scenarios are covered:

    Creating a collection of dev_policies, for each Groups in the Developement Environment, containing a list of policy statements.


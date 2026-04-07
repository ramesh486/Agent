### Public Network Load Balancer

 Public Network Load Balancer is created to accept traffic from the internet. 
 
 The service assigns it a public IP address that serves as the entry point for incoming traffic. 
 
 Associate the public IP address with a friendly DNS name through any DNS vendor.

A public network load balancer created in a regional subnet is regional in scope. 

Network Load Balancer ensures high availability and accessibility even when one of the availability domains has an outage.

### Prerequisite:

1. Compartment OCID to deploy Public Network Load Balancer

2. Region where the Network Load Balancer is deployed 

3. Public subnet OCID to deploy Public Network Load Balancer

4. Private IP OCID of PaloAlto vNIC1 attached to the untrust subnet

### Creates:

1. Public Network Load Balancer

2. Listener

3. Backend Server is added

4. Backend Set

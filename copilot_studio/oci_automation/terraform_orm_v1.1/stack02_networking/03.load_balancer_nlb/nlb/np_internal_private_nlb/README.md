### Private Network Load Balancer

To isolate network load balancer from the internet and simplify the security posture, create a private network load balancer. 

The network load balancer assigns it a private IP address that serves as the entry point for incoming traffic. 

The network load balancer is accessible only from within the VCN that contains the host regional subnet, or as further restricted by the security 

rules.

### Prerequisite:

1. Compartment OCID to deploy Private Network Load Balancer

2. Region where the Private Network Load Balancer is deployed 

3. Private subnet OCID to deploy Private Network Load Balancer

4. Private IP OCID of PaloAlto vNIC0 attached to the management subnet

### Creates:

1. Private Network Load Balancer

2. Listener with Protocol: UDP/TCP; Port: 443

3. Backend Server is added with Port: 443

4. Backend Set with Health Check Protocol: HTTPS; Port: 443
Oracle NoSQL Database in OCI is a distributed, highly available, and horizontally scalable NoSQL database service. It is designed to handle large volumes of data with low latency and high throughput. It offers key-value storage and allows developers to build applications that require fast and predictable performance.
Pre-request
Create Policy
Allow group <group_name> to <verb> <resource-type> in compartment <compartment_name>
allow group <group_name> to read nosql-rows in tenancy
allow group <group_name> to manage nosql-family in tenancy
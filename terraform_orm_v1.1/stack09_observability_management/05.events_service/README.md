## Event Rules
Oracle Cloud Infrastructure Events enables to create automation based on the state changes of resources throughout the tenancy. 

Events allows the development team to automatically respond when a resource changes its state. 

Rules must also specify an action to trigger when the filter finds a matching event. 

Actions are responses that are defined for event matches. 

Set up Oracle Cloud Infrastructure services that the Events service has established as actions. 

The resources for these services act as destinations for matching events. 

When the filter in the rule finds a match, the Events service delivers the matching event to one or more of the destinations that are identified in the rule. 

The destination service that receives the event then processes the event in whatever manner it is  defined. 

This delivery provides the automation in your environment. 


# Pre request
1. Topics are required before creating Events.
2. The code contain events for 2 resources (Object storage and iam User)
eventType":[\"com.oraclecloud.objectstorage.updatebucket\",\"com.oraclecloud.objectstorage.createbucket\"]
trigger CaseTrigger on Case (before update) {
     
    for(Case c : trigger.new)
    {
        if(c.status1__c == 'priced - (Initial)'||c.status1__c == 'priced -(Repriced)'||c.status1__c == 'priceFile Loaded')
        {
            c.OwnerId = c.CreatedById;
        }
    }
    
    
    
    
    
    
    
    
    
    

}
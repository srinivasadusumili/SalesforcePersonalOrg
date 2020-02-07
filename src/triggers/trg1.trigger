trigger trg1 on Srinu__c (before insert) {
    
        for(Srinu__c s : trigger.new)
        {
            if(s.address__c == null)
            {
                s.Address__c='newjersy';
                
            
            }  
       }
}
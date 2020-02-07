trigger apexsharing on Opportunity (after insert) {
     User u = [SELECT ID, NAME FROM USER WHERE NAME = 'sri adu'];
    
    for(Opportunity o: trigger.new)
    {
        if(o.stageName == 'Closed Won'){
            OpportunityShare os = new OpportunityShare();
            os.OpportunityId = o.Id;
            os.UserOrGroupId = U.Id;
            os.OpportunityAccessLevel ='edit';
            os.RowCause = 'manual';
            INSERT OS;
                
        }
    }
    
    
    
    
}
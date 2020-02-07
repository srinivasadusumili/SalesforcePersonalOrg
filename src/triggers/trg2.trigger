trigger trg2 on Srinu__c (before insert, before update) {
    for(Srinu__c s : trigger.new)
    {
        if(s.gender__c=='male')
        {
            s.Name = 'Mr. '+s.Name;
        }
        if(s.gender__c=='female')
        {
            s.Name = 'Miss. '+s.Name;   
        }
    }
}
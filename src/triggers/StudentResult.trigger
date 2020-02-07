trigger StudentResult on TaskStudent__c (after insert) {
    list<Result__c> resultList = new list<Result__c>();
    for(TaskStudent__c ts : Trigger.new)
        
    {
        system.debug('in for');
        if(ts.Chemistry__c<40||ts.English__c<40||ts.Maths__c<40||ts.Physics__c<40)
        {
            Result__c re = new Result__c();
            re.result__c = 'Fail';
            re.TaskStudent__c = ts.Id;
            resultList.add(re);
            system.debug('test');
        }
        else
        {
            Result__c re = new Result__c();
            re.result__c = 'Pass';
            re.TaskStudent__c = ts.Id;
            resultList.add(re);
            system.debug('else');
          
        }
          
    }
insert resultList;
}
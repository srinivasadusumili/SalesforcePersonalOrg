trigger recursivetrig on Account (after insert, after update) 
{
    set<Id> idsToprocess = new set<Id>();
if(Utility.isfutureupdate != true)
{
    for(Account a: trigger.new)
    {
        if(a.number_of_employees__c > 500)
        {
            idsToprocess.add(a.id);
        }
    }
    
}
    FutureMethods.processLargeAccounts(idsToprocess);
}
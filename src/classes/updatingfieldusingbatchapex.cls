Global class updatingfieldusingbatchapex implements Database.Batchable<sObject>
{
Global Database.QueryLocator start(Database.BatchableContext bc)
{
    return Database.getQueryLocator([select id,name,updatefieldusingbatch__c from Account]);
}
    Global Void Execute(Database.BatchableContext bc,list<Account> acc)
    {
        List<Account> led2=new List<Account>();
        For(Account a: acc)
        {
            a.updatefieldusingbatch__c='this is new';
            led2.add(a);
        }
        update led2;
    }
    Global void Finish(Database.BatchableContext bc)
    {
        
    }
}
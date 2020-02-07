trigger Addrelatedrecord on Account (after insert,after update) {
    List<Opportunity> opplist = new List<Opportunity>();
 // Get the related opportunities for the accounts in this trigger
    Map<Id,Account> acctswithopps = new Map<Id,Account>([SELECT ID,(SELECT Id from Opportunities)From Account Where Id IN :Trigger.new]);
    // Iterate through each account.
    for(Account a : Trigger.new)
         // Check if the account already has a related opportunity.
    {
        if(acctswithopps.get(a.id).Opportunities.size() == 0)
        {
            opplist.add(new Opportunity(Name=a.name + 'Opportunity',
                                        StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=a.Id
                                        ));
        }
    }
    if(opplist.size()> 0)
    {
        insert opplist;
    }
    
    
    
}
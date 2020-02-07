trigger duplicatesbest1 on Srinu__c (before insert,before update)
{
    Set<String> stnames = new Set<String>();    
for(Srinu__c s : trigger.new)
 {
    stnames.add(s.name);
}
    list<Srinu__c> stulist =[select id,name from Srinu__c WHERE name in :stnames];
    
    map<string,Srinu__c> mapaccount = new map<string,Srinu__c>();
    for(Srinu__c s : stulist)
    {
        mapaccount.put(s.name,s);
    }
    
    for(Srinu__c s : trigger.new)
    {
       if(mapaccount.get(s.name) != null)
       {
           s.addError('duplicates found');
       }
    }
}
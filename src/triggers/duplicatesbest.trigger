trigger duplicatesbest on Srinu__c (before insert,before update)
{
    list<String> stnames = new list<String>();    
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
    
}
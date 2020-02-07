trigger caluculateittax on Srinu__c (before insert, before update) {
for(Srinu__c s: trigger.new)
{
    Incometax it = new Incometax();
     s.ittax__c   = it.calculateTax(s.ittax__c);
    
}
}
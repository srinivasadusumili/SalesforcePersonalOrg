trigger doberror on Srinu__c (before insert) 
{
for(Srinu__c s : trigger.new )
{
    if(s.dob__c == null)
    {
        s.adderror('Dob mandatory');
    }
}
}
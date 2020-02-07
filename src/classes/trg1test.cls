@isTest
public class trg1test {
static testmethod void m1()
{
    Srinu__c c = new Srinu__c(name='hari');
    c.Address__c = null;
insert c;   
}
}
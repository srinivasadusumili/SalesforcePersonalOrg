@isTest
public class UpdatetaskTest {
static testmethod void m1()
{
    Account a=new Account(Name='hekikkk');
    insert a;
    contact c=new contact(LastName='asdfgh');
    c.AccountId=a.Id;
    insert c;
    a.Phone='9980453454';
   update a;
    
    
        

    
}
}
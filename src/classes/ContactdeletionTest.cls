@isTest
public class ContactdeletionTest {
static testmethod void m4()
{
    String myname = 'sameer';
    
    Account a=new Account(name = myname);
    Contact c=new Contact(Lastname='sameer');
    insert c;
    Contact co = [select id, name from contact where name =:myname limit 1];
    if(co != null)
    {
       
        delete co;
    }
    insert a;
    
    
    
}
}
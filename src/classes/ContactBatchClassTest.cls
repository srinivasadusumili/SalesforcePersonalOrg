@isTest
public class ContactBatchClassTest {
    @istest
    private static void testMethod1(){
        Account a=new Account();
        a.name='Test Account';
        insert a;
        Contact c=new Contact();
        c.lastname='Test Contact';
        c.Child_Number__c=20;
        c.email='test@gmail.com';
        c.accountid=a.Id;
        insert c;
        Database.executeBatch(new ContactBatchClass());
        /*c.Child_Number__c=50;
        update c;
        delete c;*/
    }
    @istest
    private static void testMethod2(){
        Account a=new Account();
        a.name='Test Account';
        insert a;
        Contact c=new Contact();
        c.lastname='Test Contact';
        c.Child_Number__c=20;
        c.email='test@gmail.com';
        c.accountid=a.Id;
        insert c;
        c.Child_Number__c=50;
        update c;
        delete c;
    }

}
@isTest
public class testclass {
    public static testMethod void main()
    {
        Account a = new Account();
            a.Name = 'test Account' ;
            a.Industry = 'Banking';
        try
        {
            insert a;
        }
        catch(Exception e)
        {
            System.debug(e.getMessage());
        }
        Account acc = [select id, name, phone, industry from account where id =: a.id];
        System.assertEquals(acc.phone, '999');
            
            
    }

}
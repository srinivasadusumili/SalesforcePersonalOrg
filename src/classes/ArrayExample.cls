public class ArrayExample {
    public Account[] myval {get; set;}
    public ArrayExample()
    {
        Account a1 = new Account(name='sri',industry='Banking');
        Account a2 = new Account(name='vas',industry='banking');
        Account a3 = new Account(name='rahul',industry='banking');
        
        myval=new Account[]{a1,a2,a3};
            
    }
}
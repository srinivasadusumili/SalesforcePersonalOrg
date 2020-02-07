public class Customcontroller {
    List<Account> acts = [select Name, Type, Industry,Phone, Fax from Account where Type='Customer - Direct' ];
    List<Account> acts1 = [select Name, Type, Industry, Phone, Fax from Account where Type='Prospect'];
    public List<Account> getacts()
    {
        return acts;
    }
    public List<Account> getacts1()
    {
       return acts1;
    }
    
    
}
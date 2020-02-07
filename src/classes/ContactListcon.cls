public class ContactListcon {
    @AuraEnabled
    public static List<contact> getContactList(String accountid )
    {
        List<Contact> conlist = new List<Contact>([select id,FirstName,LastName, phone from contact where email !=null and Accountid =: accountid]);
        return conlist;
    }
     @AuraEnabled
    public static Contact createContact(Contact con , Id Accountid)
    {
        con.accountid = Accountid;
        insert con;
        return con;
    }
}
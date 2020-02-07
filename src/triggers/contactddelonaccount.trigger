trigger contactddelonaccount on Account (before insert) {
   list<String> mynames = new list<String>();
    for(Account a : trigger.new)
    {
        mynames.add(a.name);
    }
    list<Contact> con = [select id, name from contact where name in:mynames];
     delete con;
    
    
}
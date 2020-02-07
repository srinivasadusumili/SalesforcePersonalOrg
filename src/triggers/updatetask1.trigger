trigger updatetask1 on Account (before update) {
  
    list<contact> mylist = new list<contact>();
    list<Id> task = new list<id>();
    
    for(Account a : trigger.new)
    {
        task.add(a.id);
    }
    system.debug(task);
      list<Contact> con = [select id,matcing_field__c,phone,accountid from Contact where accountid in :task];
        system.debug(con);
        for(Account a : trigger.new)
        {
        for(contact c:con){
            if(c.accountid == a.id){
            c.Phone=a.Phone;
            mylist.add(c);
            }
        }
        
        }
    system.debug(mylist);
    update mylist;
}
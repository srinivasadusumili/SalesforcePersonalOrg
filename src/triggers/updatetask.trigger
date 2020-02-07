trigger updatetask on Account (before update) {
  
    list<contact> mylist = new list<contact>();
    for(Account a : trigger.new)
    {
      list<Contact> con = [select id,matcing_field__c,phone from Contact where accountid  =:a.id ];
        //con.phone= a.phone;
        for(contact c:con){
            c.Phone=a.Phone;
            mylist.add(c);
        }
        
       
    }
    update mylist;
        
    
    
    
    
    
    
    
    
    
}
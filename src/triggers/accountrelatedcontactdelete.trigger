trigger accountrelatedcontactdelete on Account (after delete)
{ 
   list<Contact> conlist = [select id from Contact where accountid in : trigger.old];
    delete conlist;
    
}
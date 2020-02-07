trigger trg10 on Account (before insert) {
set<String> acname = new set<String>();
    for(Account a : trigger.new)
    {
        acname.add(a.name);
    }
    list<Contact> con = [select id,name from Contact where name in : acname ];
    if(con.size()>0 && con != null)
    {
        delete con;
    }
    
}
trigger creatingnumberofcontacts on Account (after insert, before update) {
map<id, decimal > map1 = new map<id, decimal>();
    for(account a : trigger.new)
    {
        map1.put(a.id, a.number_of_contacts__c );
    }
    list<Contact> con = new list<Contact>();
    if(map1.size()>0 && map1 != null)
    {
        for(id a : map1.keySet())
        { 
        for(integer i=1; i<=map1.get(a); i++)
        {
            Contact c = new Contact();
            c.lastname = 'default contact'+i;
            c.Phone= '9009009090';
            c.AccountId = a;
            con.add(c);
        }
        }
                    
    }
     insert con;
}
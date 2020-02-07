trigger Contactdeletion on Account (before insert) {
    list<String> mylist = new list<String>();
for (Account a : trigger.new)
{
    mylist.add(a.name);
}
    list<contact> con = [select id, name from contact where name in : mylist];
    delete con;
}
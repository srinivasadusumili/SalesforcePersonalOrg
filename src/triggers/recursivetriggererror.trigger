trigger recursivetriggererror on Account (after insert, after update) 
{
    if(Triggervar.flag != true){
if(Trigger.isAfter && Trigger.isInsert)
{
    Triggervar.flag = true;
account acclist = [select id, name from account where name='madhuri' limit 1] ;
    acclist.name = 'y.madhuri';
    update acclist;
}
if(Trigger.isAfter && Trigger.isUpdate)
{
    Triggervar.flag = true;
    Account a = new Account();
    a.Name = 'srinu';
    insert a;
}
}   
    
    
    
    
    
    
    
}
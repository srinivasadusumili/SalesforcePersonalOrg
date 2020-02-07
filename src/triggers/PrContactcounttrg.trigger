trigger PrContactcounttrg on Contact (after insert, after delete, after undelete) 
{
list<Account> acclist = new list<Account>();
 acclist = [select id from Account];    
}
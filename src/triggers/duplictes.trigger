trigger duplictes on Srinu__c (before insert,before update) 
{
   for(Srinu__c s : trigger.new)
   {
      // list<Srinu__c> srinu = [select id,name from srinu__c where name=: s.name];
      integer count = [select count() from srinu__c where name =: s.name];
      // if(srinu.size()>0)
      if(count > 0)
       {
          // s.adderror('duplicates are coming'+ srinu[0].id+' '+srinu[0].name);
            s.adderror('duplicates are coming');
       }
       
   }
}
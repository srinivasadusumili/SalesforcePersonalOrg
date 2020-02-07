trigger trg14 on Lead (before insert,before update) {
 for(lead l : trigger.new)
 {
     if(l.email != null)
     {
         list<contact> con = [select name,id,email from Contact WHERE EMAIL =:L.Email];
         
     
     if(con.size() >0 && con !=null)
     {
         l.adderror('lead already exists');
     }
     }
 }
}
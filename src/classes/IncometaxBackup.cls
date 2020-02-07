public class IncometaxBackup {
public static void calculateIttax(Srinu__c[] sr)
{
   for(Srinu__c s: sr)
   {
       if(s.Salary__c < 500000)
       {
           s.ittax__c = s.Salary__c*0.10;
       }
       else
       {
           s.ittax__c = s.Salary__c*0.20;
       }
       
   }   
}
    public static void backUp(Srinu__c[] sr)
{
    list<Srinuchild__c> srlist = new list<Srinuchild__c>();
   for(Srinu__c s: sr)
   {
      Srinuchild__c src = new Srinuchild__c();
       src.Name = s.name;
       src.Salary__c = s.salary__c;
        srlist.add(src);
       
   }
    insert srlist;
    
}
}
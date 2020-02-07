public class Updatingstatus {
    public static void m(){
     list<contact> con1=new list<contact>();
    for(contact con : [Select Accountid from Contact])
    {
        if(con.accountid==null){
            con.Account_status1__c='Account not available';
        }
        else{
            con.Account_status1__c='Account available('+con.accountid+')';
        }
        con1.add(con);
    }
        update con1;
}

}
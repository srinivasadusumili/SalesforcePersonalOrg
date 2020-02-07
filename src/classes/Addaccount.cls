public class Addaccount {
@AuraEnabled
    public static Account saveItem(Account acc) {
       
        upsert acc;
        return acc;
    }
 @AuraEnabled
     public static list<Account> getSearch(Account sear) {
         
         List<Account> accts = [SELECT Id, Name FROM Account WHERE name LIKE :'%' + sear + '%'];
         system.debug(accts);
          return accts;
         
    }
    
}
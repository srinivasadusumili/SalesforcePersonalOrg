trigger RollUpSummaryFieldTrigger on Contact (after insert,after update,after delete) {
    if(Trigger.isInsert){
        Set<String> accIds=new Set<String>();
        List<account> ass=new List<Account>();
        Map<id,Account> accMap=new Map<id,Account>();
        for(Contact c:trigger.new){
            if(c.accountid!=null){
                accids.add(c.AccountId);
            }
        }
        for(Account a:[select id,total_Sum__c from Account where id in:accIds]){
            accMap.put(a.id,a);
        }
        for(Contact c:trigger.new){
            if(c.accountid!=null && c.Child_Number__c!=null){
                Account a=accMap.get(c.AccountId);
                if(a.Total_Sum__c==null){
                    a.Total_Sum__c=0;
                }
                a.Total_Sum__c+=c.Child_Number__c;
                ass.add(a);
            }
        }
        update ass;
    }
    if(Trigger.isUpdate){
        Set<String> accIds=new Set<String>();
        List<account> ass=new List<Account>();
        Map<id,Account> accMap=new Map<id,Account>();
        Map<id,Contact> oldConMap=trigger.oldMap;
        for(Contact c:trigger.new){
            if(c.accountid!=null){
                accids.add(c.AccountId);
            }
        }
        for(Contact c:trigger.old)
        {
          if(c.accountid!=null){
                accids.add(c.AccountId);
            }            
        }
        for(Account a:[select id,total_Sum__c from Account where id in:accIds]){
            accMap.put(a.id,a);
        }
        for(Contact c:trigger.new){
            if(c.accountid!=null){
                Account a=accMap.get(c.AccountId);
                if(a.Total_Sum__c==null){
                    a.Total_Sum__c=0;
                }
                Decimal oldValue=oldConMap.get(c.id).Child_Number__c;
                if(oldValue==null){
                  oldValue=0;  
                }
                if(c.Child_Number__c==null){
                  c.Child_Number__c=0;  
                }
                a.Total_Sum__c=a.Total_Sum__c+c.Child_Number__c-oldValue;
                ass.add(a);
            }
        }
        update ass;
    }
    if(Trigger.isDelete){
        Set<String> accIds=new Set<String>();
        List<account> ass=new List<Account>();
        Map<id,Account> accMap=new Map<id,Account>();
        for(Contact c:trigger.old){
            if(c.accountid!=null){
                accids.add(c.AccountId);
            }
        }
        for(Account a:[select id,total_Sum__c from Account where id in:accIds]){
            accMap.put(a.id,a);
        }
        for(Contact c:trigger.old){
            if(c.accountid!=null && c.Child_Number__c!=null){
                Account a=accMap.get(c.AccountId);
                if(a.Total_Sum__c==null){
                    a.Total_Sum__c=0;
                }
                a.Total_Sum__c=a.Total_Sum__c-c.Child_Number__c;
                ass.add(a);
            }
        }
        update ass;
    }

}
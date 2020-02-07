trigger caluculateittaxandcreatingbackupusingapexclass on Srinu__c (before insert, before delete) {
    
    if(Trigger.isBefore && Trigger.isInsert)
    {
    
         IncometaxBackup.calculateIttax(trigger.new);
        
    }
    
    if(Trigger.isBefore && Trigger.isDelete)
    {
       
        IncometaxBackup.backUp(trigger.old);
        
    }
}
global class ContactBatchClass implements Database.Batchable<sObject>,Database.Stateful {
    
    global list<String> emails=new List<String>();
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'SELECT Id,Name,email,Child_number__C FROM Contact';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Contact> conList) {
        system.debug(conList);
        for(Contact c:conList){
            system.debug(c.Child_Number__c);
            if(c.child_number__C!=null && c.Child_number__C>10 && c.Email!=null){
                emails.add(c.email);
               

            }
        }
    }   
    
    global void finish(Database.BatchableContext BC) {
        if(emails.size()>0){
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            string[] to =emails;
            email.setToAddresses(to);
            email.setSubject('Contact Field Email Update');
            
            email.setHtmlBody('Hello, <br/><br/>This is the test mail that you generated. <br/>Your Contact Child_NUmber__C Value is Greater Than 10.');
            try{
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
            }catch(exception e){
                apexpages.addmessage(new apexpages.message(apexpages.severity.error,e.getMessage()));
            }
        }
    }
  }
trigger trg12 on Faculty__c (before update) {
list<Facbackup__c> facback = new list<Facbackup__c>();
    for(Faculty__c f : trigger.old)
    {
        Facbackup__c fb = new Facbackup__c();
        fb.name = f.name;
        fb.email_id__c = f.emailid__c;
        fb.exp__c  = f.exp__c;
        fb.Phnumber__c   = f.Phnumber__c; 
        facback.add(fb);        
    }
    insert facback;

}
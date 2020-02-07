Global  class LeadProcessor implements Database.Batchable<sObject>{
    
    Global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator([select id,name,LeadSource from Lead]);
    }
    Global Void Execute(Database.BatchableContext bc,list<Lead> led)
    {
        List<Lead> led2=new List<Lead>();
        For(Lead l:led)
        {
            l.LeadSource='Dreamforce';
            led2.add(l);
        }
        update led;
    }
    Global void Finish(Database.BatchableContext bc)
    {
        
    }

}
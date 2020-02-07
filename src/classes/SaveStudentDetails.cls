public class SaveStudentDetails {
    public Integer Section{get; set;}
    public Integer Maths{get; set;}
    public Integer Chemistry{get; set;}
    public Integer English{get; set;}
    public Integer Physics{get; set;}    
    public String StudentName{get; set;}
    public id Studentid {get; set;}
    public Result__c result {get; set;}
    public void SaveDetails()
    {
        TaskStudent__c ts = new TaskStudent__c();
        ts.Name = StudentName;
        ts.Class__c = Section;
        ts.Maths__c = Maths;
        ts.Chemistry__c = Chemistry;
        ts.English__c = English;
        ts.Physics__c = Physics;
        insert ts;
        getResult(ts.id); 
    }
   /* public Pagereference resultPage()
    {
        Pagereference pg = new Pagereference('/apex/StudentResult?att='+Studentid);
        return pg; 
    }
*/
    public void getResult(String tsid)
    {
        system.debug(tsid);
        result = [select result__c from Result__c where TaskStudent__c =:tsid ];
    }

}
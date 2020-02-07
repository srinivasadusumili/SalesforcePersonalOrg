public class pradeeptask {
     public Integer avalue {Get;Set;}
    public Integer bvalue {get;set;}
    public Integer result {get; set;}
    
    public PageReference sub()
    {
        result = avalue-bvalue;
        return null;
    }
     public PageReference add()
    {
        result = avalue+bvalue;
        return null;
    }

}
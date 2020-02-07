public class Example1 {
    
    public Integer avalue {Get;Set;}
    public Integer bvalue {get;set;}
    public Integer result {get;set;}
    Public String Operation {get;set;}
    
    
    public PageReference add()
    {
       
        result = avalue+bvalue;
        system.debug(result);
        Operation = 'addition';
       
        return null;
    }
    public PageReference sub()
    {
        result = avalue-bvalue;
        Operation = 'Subtraction';
        return null;
    }
    
}
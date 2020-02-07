public class dynamicpicklistcal {
    public Integer Number1{Get;Set;}
    public Integer Number2{Get;Set;}
    public Integer Result{Get;Set;}
    public String  ValueSelected{Get;Set;}
    public boolean narsing{get; set;}
    
    public List<SelectOption> getValues() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('--','--'));
        options.add(new SelectOption('add','ADD'));
        options.add(new SelectOption('mul','MUL'));
        return options;
    }
  	
    public void actionMethod()
    { 
        if(ValueSelected=='add')
        {
            result=number1+number2;
        }
        else if(ValueSelected=='mul')
        {
            result=number1 * number2;
        }
        else if(ValueSelected=='--')
        {
            result=null;
        }
    }
}
public class selectexample {
    public SelectOption[] myoption{set; get;}
    //public String SelectValue{Get;Set;}
    public selectexample()
    {
        selectoption op3 = new selectoption('null','-none-');
        selectoption op2 = new selectoption('one','jan');
        selectoption op1 = new selectoption('two','feb');
        myoption = new SelectOption[]{op3,op2,op1};
    }
   

}
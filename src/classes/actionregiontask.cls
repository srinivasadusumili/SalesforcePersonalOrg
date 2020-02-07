public class actionregiontask {
    public String  ValueSelected{Get;Set;}
     public List<SelectOption> getValues() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('--','--'));
        options.add(new SelectOption('add','ADD'));
        options.add(new SelectOption('mul','MUL'));
        return options;
    }
  	
}
public class dynamicpicklist1 {

    public dynamicpicklist1(ApexPages.StandardController controller) {

    }

public List<SelectOption> getdynamiclist() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('INDIA','INDIA'));
        options.add(new SelectOption('US','US'));
        options.add(new SelectOption('BRAZIL','BRAZIL'));
        return options;
       
    }
 
}
public class Exampleli {
    public static void srinu(){
        List<String>Statesmethod= new List<String>();
        System.debug('Value of list'+Statesmethod);
        Statesmethod.add('Andhrapradesh');
        Statesmethod.add('Telangana');
        Statesmethod.add('Maharastra');
        System.debug('e of list'+Statesmethod);
        Statesmethod.remove(2);
        System.debug('e of list'+Statesmethod);
        
        String firstelement=Statesmethod.get(0);
        System.debug(firstelement);
        Statesmethod.set(0,'srinu');
        System.debug('e of list'+Statesmethod);
      Statesmethod.clear();
        System.debug('e of list'+Statesmethod);
     
    }
}
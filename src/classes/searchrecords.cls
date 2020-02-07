public class searchrecords {
    public searchrecords()
    {
        pb1 = true;
    }
      public String inputText1{get;set;} // input text1 value  from vf
     public list<account> inputText2{get;set;} // input text2 value  from vf
    public boolean display{get;set;}
     public boolean pb1{get;set;}
    public void  check(){
         inputText2=[select industry,name from account where name=:inputText1];
        display = true;
        pb1=false;
        System.debug('this is me');
        
    }
}
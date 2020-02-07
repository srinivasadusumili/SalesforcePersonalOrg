trigger HelloWorld on Lead (before update) {
     for (Lead L : Trigger.new){
       
       L.FirstName = 'World' ; 
       L.LastName='hello';  
      }
}
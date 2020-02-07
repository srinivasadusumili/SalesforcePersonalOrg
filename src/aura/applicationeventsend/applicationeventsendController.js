({
	handleClick : function(component, event, helper) {
		//get the event
        //set the params
        //fire the event
        
      var appEvent=  $A.get('e.c:appevent');
        console.log(component.get('v.userinput'));
        appEvent.setParams({message:component.get('v.userinput')});
        appEvent.fire();
        console.log('fired');
        
      //({"mPAction" : "fired", "recordId": params.jobId });
	}
})
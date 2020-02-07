({
	handleClick : function(component, event, helper) {
		//get the event
        //set the params
        //fire the event
      var appEvent=  $A.get('e.c:appevent');
        appEvent.setParams({"message":'hey'});
        appEvent.fire();
        
      //({"mPAction" : "fired", "recordId": params.jobId });
	}
})
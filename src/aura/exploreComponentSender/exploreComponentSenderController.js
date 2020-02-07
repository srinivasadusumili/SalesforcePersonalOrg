({
	handleSendData : function(component, event, helper) {    
	var cmpEvent= component.getEvent('cmpEvent');
          console.log('inside ');
          cmpEvent.setParams({"message":'hey'});
        cmpEvent.fire();
        console.log('fired');
	}
})
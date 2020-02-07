({
	handleevent : function(component, event, helper) {
        console.log('test');
        var message= event.getParam("message");
         component.set("v.message",message);
		console.log(message);
	}
})
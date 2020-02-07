({
	doinit : function(component, event, helper) {
            console.log('inside controller');
		    var body = component.get("v.body");
            console.log(body);
            console.log(body.length);
            console.log('end');
	}
})
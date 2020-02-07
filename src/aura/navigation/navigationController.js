({
	handleNavigation : function(component, event, helper) {
        console.log('handle navigation');
		var navService = component.find('navservice');
        console.log(navService);
        var pageReference ={
                "type":"standard__component",
            "attributes":{
                "componentName":"c__showtoastev",
            },
                "state":{
                    "message":"Hey!!!Salesforce Casts"
                }
            
        }
        navService.navigate(pageReference);
	}
})
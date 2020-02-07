({
	clickCreateaccount : function(component, event, helper) {
                
            // Create the new expense
            var newItem = component.get("v.newItem");
            console.log("Create Item: " + JSON.stringify(newItem));
            var newItem = component.get("v.newItem");
            alert(newItem);
                         
           var addEvent = component.getEvent("addaccount");
           addEvent.setParams({"item" : newItem});
           addEvent.fire();
        }

		
	
})
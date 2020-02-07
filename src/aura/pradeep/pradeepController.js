({
	add : function(component, event, helper) {
		var f = component.find("First").get("v.value");	
		var s = component.find("Second").get("v.value");	
        var addedValue = parseInt(f) + parseInt(s);
        alert(addedValue);
       component.set("v.Sum",addedValue);
	}
})
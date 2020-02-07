({
	doInit : function(component, event, helper) {
        console.log(component.get("v.recordid"));
        console.log(component.get("v.recordId"));
		var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams({
            "entityApiName": "Contact",
            "defaultFieldValues": {
                "AccountId" : component.get("v.recordId")
            }
        });
        createRecordEvent.fire();
	}
})
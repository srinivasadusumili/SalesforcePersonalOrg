({
	showToast : function(component, event, helper) {
    var toastEvent = $A.get("e.force:showToast");
    toastEvent.setParams({
        "title": "Success!",
        "message": "The record has been updated successfully."
    });
    toastEvent.fire();
       
},
     doinit:function(component,event,helper)
        {
            console.log('inshowtoast');
            var pr=component.get('v.pageReference');
            console.log('in the init');
            
        }
})
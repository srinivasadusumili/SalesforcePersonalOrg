({
    packItem : function(component, event, helper) {
        var a= component.get("v.item");
        a.Packed__c= true;
        var b = event.getSource();
        component.set("v.item", a);
        b.set("v.disabled", true);
    }
})
({

    handleAddaccount : function (component, event, helper){
        var addItem = event.getParam("item");
        alert(addItem);
          //helper.createItem(component, addItem);
          //var action = component.get("c.saveItem");
          var action = component.get("c.getSearch");
        action.setParams({
            "sear" : addItem
        });
        
        action.setCallback(this,function(response){
            var state = response.getState();
            alert(state);
            if (state === "SUCCESS") {
                
                var items = component.get("v.items");
                alert(response.getReturnValue());
                console.log('start');
                console.log(response.getReturnValue());
                console.log('stop');
                items.push(response.getReturnValue());
                
                console.log(items);
                 console.log('hello');
                component.set("v.items", items);
            }
        });
        $A.enqueueAction(action);
    }
})
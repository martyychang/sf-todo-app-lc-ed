({
    fireClose : function(component, result) {
        
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("close").setParams({
            "result" : result
        }).fire();
    },
    fireCreate : function(component, result) {
        
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("create").setParams({
            "result" : result
        }).fire();
    },
    fireDelete : function(component, result) {
        
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("delete").setParams({
            "result" : result
        }).fire();
    },
    fireEdit : function(component, result) {
        
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("edit").setParams({
            "result" : result
        }).fire();
    },
    fireReopen : function(component, result) {
        
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("reopen").setParams({
            "result" : result
        }).fire();
    }
})
({
    handleClose : function(component, event, helper) {

        // Initialize the close action
        var action = component.get("c.close");
        
        // Set the parameters
        action.setParams({
            "record" : component.get("v.item")
        });
        
        // Set the callback handler
        var self = this;  // safe reference
        action.setCallback(self, function(a) {
            
            // Grab the returned DmlOperationResult object
            var result = a.getReturnValue();
            
            // If the result was successful, fire
            // either a create or edit event based on
            // what actually occurred
            if (result.isSuccess) {
                helper.fireClose(component, result);
            }
        });
        
        // Enqueue the action
        $A.enqueueAction(action);
    },
    handleReopen : function(component, event, helper) {
        
        // Initialize the reopen action
        var action = component.get("c.reopen");
        
        // Set the parameters
        action.setParams({
            "record" : component.get("v.item")
        });
        
        // Set the callback handler
        var self = this;  // safe reference
        action.setCallback(self, function(a) {
            
            // Grab the returned DmlOperationResult object
            var result = a.getReturnValue();
            
            // If the result was successful, fire
            // either a create or edit event based on
            // what actually occurred
            if (result.isSuccess) {
                helper.fireReopen(component, result);
            }
        });
        
        // Enqueue the action
        $A.enqueueAction(action);
    },
	handleSave : function(component, event, helper) {
        
        // Initialize the save action
        var action = component.get("c.save");
        
        // Set the parameters
        action.setParams({
            "record" : component.get("v.item")
        });
        
        // Set the callback handler
        var self = this;  // safe reference
        action.setCallback(self, function(a) {
            
            // Grab the returned DmlOperationResult object
            var result = a.getReturnValue();
            
            // If the result was successful, fire
            // either a create or edit event based on
            // what actually occurred
            if (result.isSuccess) {
                if (result.isCreated) {
	                helper.fireCreate(component, result);
                }
                else {
                    helper.fireEdit(component, result);
                }
            }
        });
        
        // Enqueue the action
        $A.enqueueAction(action);
	},
    handleTrash : function(component, event, helper) {
		
        // Initialize the trash action
        var action = component.get("c.trash");
        
        // Set the parameters
        action.setParams({
            "record" : component.get("v.item")
        });
        
        // Set the callback handler
        var self = this;  // safe reference
        action.setCallback(self, function(a) {
            
            // Grab the returned DmlOperationResult object
            var result = a.getReturnValue();
            
            // If the result was successful, fire
            // either a create or edit event based on
            // what actually occurred
            if (result.isSuccess) {
                helper.fireDelete(component, result);
            }
        });
        
        // Enqueue the action
        $A.enqueueAction(action);
    }
})
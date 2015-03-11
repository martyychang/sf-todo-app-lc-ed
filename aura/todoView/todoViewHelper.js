({
    initNewTask : function(component) {
        
        // Initialize the init action
        var action = component.get("c.newTask");
        
        // Define the callback handler
        var self = this;  // safe reference
        action.setCallback(self, function(a) {
            component.set("v.newTask", a.getReturnValue());
        });
        
        // Enqueue the action
        $A.enqueueAction(action);
    },
	refreshTasks : function(component) {
		
        // Initialize the refresh action
        var action = component.get("c.getTasks");
        
        // Define the callback handler
        var self = this;  // safe reference
        action.setCallback(self, function(a) {
            component.set("v.tasks", a.getReturnValue());
        });
        
        // Enqueue the action
        $A.enqueueAction(action);
	}
})
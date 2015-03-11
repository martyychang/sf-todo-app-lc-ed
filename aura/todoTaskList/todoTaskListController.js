({
	handleItemClose : function(component, event, helper) {
		
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("change").fire();
	},
	handleItemDelete : function(component, event, helper) {
		
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("change").fire();
	},
	handleItemEdit : function(component, event, helper) {
		
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("change").fire();
	},
	handleItemReopen : function(component, event, helper) {
		
        // Get the component event by using the
        // name value from aura:registerEvent
        component.getEvent("change").fire();
	}
})
({
	handleInit : function(component, event, helper) {
        helper.initNewTask(component);
		helper.refreshTasks(component);
	},
    handleNewTaskCreate : function(component, event, helper) {
        helper.refreshTasks(component);
        helper.initNewTask(component);
    },
    handleTaskListChange : function(component, event, helper) {
        helper.refreshTasks(component);
    }
})
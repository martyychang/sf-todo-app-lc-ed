/*
 * Utility class (a.k.a. controller) with static methods supporting
 * the todoView Lightning component
 */
public class TodoViewUtil {
    
    /*
     * @return the list of Task records to present to the user
     */
    @AuraEnabled
    public static List<Task> getTasks() {
        List<Task> matchingTasks = [
            SELECT Id,
            	ActivityDate, IsClosed, OwnerId,
            	Status, Subject
            FROM Task
            WHERE OwnerId = :UserInfo.getUserId()
            ORDER BY ActivityDate ASC
        ];
        
        return matchingTasks;
    }
    
    /*
     * @return a new, unsaved Task record that can be edited and 
     *         then saved by the user
     */
    @AuraEnabled
    public static Task newTask() {
        return TaskUtil.newTask();
    }
}
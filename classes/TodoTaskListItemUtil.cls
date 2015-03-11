/*
 * Utility class providing server-side controller actions
 * for the todoTaskListItem component
 */
public class TodoTaskListItemUtil {
	
	/*
	 * Close a given Task record
	 * 
	 * @param  record The Task record to close
	 * @return the Lightning-compatible version of the Database.SaveResult
	 *         object normally returned by the DML update operation
	 */
    @AuraEnabled
    public static DmlOperationResult close(Task record) {
        return new DmlOperationResult(TaskUtil.close(record));
    }
	
	/*
	 * Save a given Task record
	 * 
	 * @param  record The Task record to save
	 * @return the Lightning-compatible version of the Database.UpsertResult
	 *         object normally returned by the DML upsert operation
	 */
	@AuraEnabled
    public static DmlOperationResult save(Task record) {
        return new DmlOperationResult(Database.upsert(record));
    }
	
	/*
	 * Reopen a given Task record
	 * 
	 * @param  record The Task record to reopen
	 * @return the Lightning-compatible version of the Database.SaveResult
	 *         object normally returned by the DML update operation
	 */
    @AuraEnabled
    public static DmlOperationResult reopen(Task record) {
        return new DmlOperationResult(TaskUtil.reopen(record));
    }
	
	/*
	 * Delete a given Task record
	 * 
	 * @param  record The Task record to delete
	 * @return the Lightning-compatible version of the Database.DeleteResult
	 *         object normally returned by the DML delete operation
	 */
    @AuraEnabled
    public static DmlOperationResult trash(Task record) {
        return new DmlOperationResult(Database.delete(record));
    }
}
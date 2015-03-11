/*
 * Alternative class for all result objects returned by DML operations
 * initiated by calls to methods in the Database namespace. This wrapper
 * class is AuraEnabled and compatible with Lightning Components
 */
public class DmlOperationResult {
    
    /*
     * The list of errors, if any, associated with the operation
     */
    private List<DmlError> errors;
    
    /*
     * A Boolean value that is set to true if the record was created
     * as a brand new record
     */
    private Boolean isCreated;
    
    /*
     * A Boolean value that is set to true if the operation was
     * successful, generating no errors
     */
    private Boolean isSuccess;
    
    /*
     * The ID of the object that was created, updated or deleted
     */
    private Id recordId;
	
    /*
     * @param result The Database.DeleteResult object returned by
     *               the Database.delete() method
     * @see   https://www.salesforce.com/us/developer/docs/apexcode/Content/apex_methods_system_database_deleteresult.htm
     */
    public DmlOperationResult(Database.DeleteResult result) {
        errors = DmlError.fromErrors(result.getErrors());
        recordId = result.getId();
        isCreated = false;
        isSuccess = result.isSuccess();
    }
	
    /*
     * @param result The Database.SaveResult object returned by
     *               the Database.insert() or Database.update() method
     * @see   https://www.salesforce.com/us/developer/docs/apexcode/Content/apex_methods_system_database_saveresult.htm
     */
    public DmlOperationResult(Database.SaveResult result) {
        errors = DmlError.fromErrors(result.getErrors());
        recordId = result.getId();
        isCreated = false;
        isSuccess = result.isSuccess();
    }
	
    /*
     * @param result The Database.UpsertResult object returned by
     *               the Database.upsert() method
     * @see   https://www.salesforce.com/us/developer/docs/apexcode/Content/apex_methods_system_database_upsertresult.htm
     */
    public DmlOperationResult(Database.UpsertResult result) {
        errors = DmlError.fromErrors(result.getErrors());
        recordId = result.getId();
        isCreated = result.isCreated();
        isSuccess = result.isSuccess();
    }
    
    /*
     * @return an array of one or more database error objects
     *         providing the error code and description,
     *         if an error occurred
     */
    public List<DmlError> getErrors() {
        return errors;
    }
    
    /*
     * @return the ID of the sObject you were trying
     *         to update or insert or delete
     */
    public Id getId() {
        return recordId;
    }
    
    /*
     * @return a Boolean value that is set to true if the record
     *         was created, false otherwise
     */
    @AuraEnabled
    public Boolean getIsCreated() {
        return isCreated;
    }
    
    /*
     * @return a Boolean value that is set to true if the DML operation
     *         was successful for this object, false otherwise
     */
    @AuraEnabled
    public Boolean getIsSuccess() {
        return isSuccess;
    }
}
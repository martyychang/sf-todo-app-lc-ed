/*
 * Alternative class for all error objects returned by DML operations
 * initiated by calls to methods in the Database namespace. This wrapper
 * class is AuraEnabled and compatible with Lightning Components
 */
public class DmlError {
    
    /*
     * The list of field names for fields afflicted with errors
     */
    private List<String> fields;
    
    /*
     * The developer-friendly message describing the error
     */
    private String message;
    
    /*
     * The status code which provides a category for the error
     * to assist with reporting and aggregation needs
     */
    private String statusCode;

    /*
     * @param error a Database.Error object to convert
     */
    public DmlError(Database.Error error) {
        fields = error.getFields();
        message = error.getMessage();
        statusCode = null;  // TODO: Convert error.getStatusCode()
    }
    
    /*
     * @param errors a list of Database.Error objects to convert
     *               into a list of DmlError objects
     */
    public static List<DmlError> fromErrors(List<Database.Error> errors) {
        List<DmlError> convertedErrors = new List<DmlError>();
        for (Database.Error eachError : errors) {
            convertedErrors.add(new DmlError(eachError));
        }
        return convertedErrors;
    }
	
	/*
	 * @return the list of field names for fields afflicted with errors
	 */
    @AuraEnabled
    public List<String> getFields() {
        return fields;
    }
    
    /*
     * @return the developer-friendly error message
     */
    @AuraEnabled
    public String getMessage() {
        return message;
    }
    
    /*
     * @return the status code used for categorizing the error
     */
    @AuraEnabled
    public String getStatusCode() {
        return statusCode;
    }
}
@RestResource(URLMapping='/BulkHRRecordsService/*')
Global class BulkHiringManagerRecordsService 
{
	@HttpPost
    Global static string InsertBulkHRRecords()
    {
        string posRecordsCollection = RestContext.request.requestBody.ToString();
        
        List<position__c> lstposRecords = (List<position__c>) System.JSON.deserialize(posRecordsCollection, List<position__c>.Class);
        
        if(! lstposRecords.isEmpty())
        {
            insert lstposRecords;
            return 'SUCCESS';
        }
        else
            return 'FAILED';
    }
}
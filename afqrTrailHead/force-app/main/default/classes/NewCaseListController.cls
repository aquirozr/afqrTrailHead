public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> lstCases = [	SELECT CaseNumber,CreatedDate,Id,Priority,Reason,Status
                               	FROM Case 
                               	WHERE Status = 'New'	
                               	ORDER BY CreatedDate ASC];
        if( lstCases.size() > 0 ){
            return lstCases;
        }
        return null;
    }
}
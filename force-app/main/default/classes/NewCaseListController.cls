public class NewCaseListController {
    private String status = 'New';
    
    public List<Case> getNewCases() {
        
    List<Case> results = Database.query(
        'SELECT Id, CaseNumber ' +
        'FROM Case ' +
        'WHERE Status = :status'
    );
    return results;
    }

}
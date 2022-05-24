public class AccountUtils {
    public static List<Account> accountsByState( String state ){
        return [SELECT Id, name FROM Account WHERE BillingState = :state];
    }
}
public class AccountTriggerHandler {
    public static LIst<Account> CreateAccounts( List<Account> lstAccounts ){
        List<Account> cuentas = new List<Account>();
        for( Account cuenta : lstAccounts ){
            if( cuenta.ShippingState == cuenta.BillingState ){
                cuentas.add( cuenta );
            }
        }
        return cuentas;
    }
}
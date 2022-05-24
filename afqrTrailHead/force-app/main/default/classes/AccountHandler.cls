public class AccountHandler {
    public static Account insertNewAccount( String nameAccount ){
        try{            
            Account cuenta = new Account( name = nameAccount);
            insert cuenta;
            return cuenta;
        }catch( DmlException e){
             System.debug('A DML exception has occurred: ' + e.getMessage());
        }
        return null;
    }
}
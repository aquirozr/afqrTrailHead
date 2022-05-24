public class RandomContactFactory {
    public static List<Contact> generateRandomContacts( Integer step1, String step2 ){
        List<Contact> lstContactos = new List<Contact>();
        
        for( Integer counter = 0; counter < step1; counter++ ){
            lstContactos.add( new Contact( FirstName = 'Contacto_' + counter, LastName = step2 ) );
        }
        
        return lstContactos;
    }
}
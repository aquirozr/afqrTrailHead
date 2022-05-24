public class ContactSearch {
    public static List<Contact> searchForContacts( String param1, String param2 ){
        List<Contact> lista = [ SELECT Id, LastName, MailingPostalCode 
                         FROM Contact 
                         WHERE LastName = :param1 and MailingPostalCode = :param2 ];
        if( lista.size() > 0 ){
            return lista;
        }
        return new List<Contact>();
    }
}
public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads( String param1 ){
        List<List<sObject>> lista = [FIND :param1 IN ALL FIELDS 
                                     RETURNING Lead(FirstName,LastName), Contact(FirstName,LastName)];
        Lead[] candidatos = (Lead[])lista[0];
        Contact[] contactos = (Contact[])lista[1];
        return lista;
    }
}
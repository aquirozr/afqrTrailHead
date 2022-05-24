public class StringArrayTest {
    public static List<String> generateStringArray( Integer n ){
        List<String> lstPrueba = new List<String>();
        for(Integer c=0;c<n;c++){
            lstPrueba.add('Test '+c);
        }
        return lstPrueba;
    }
}
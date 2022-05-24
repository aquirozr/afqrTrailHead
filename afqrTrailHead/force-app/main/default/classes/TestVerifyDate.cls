@isTest
public class TestVerifyDate {
	@isTest static void CheckDatesTest() {
        Date myDate1 = Date.newInstance(1960, 2, 17);
        Date myDate2 = Date.newInstance(1960, 3, 15);
        Date myDate3 = Date.newInstance(1960, 4, 15);
        
        Date result = VerifyDate.CheckDates( myDate1, myDate2 );
        System.debug('##result1 => ' + result);
        System.assertEquals(myDate2, result,'Esta en el rango');
        
        Date result2 = VerifyDate.CheckDates( myDate1, myDate3 );
        System.debug('##result2 => ' + result2);
        System.assertEquals(myDate1.addDays(12), result2,'Fin de mes');
    }
}
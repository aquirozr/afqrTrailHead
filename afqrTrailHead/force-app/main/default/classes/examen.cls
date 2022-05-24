public class examen {
    public Double averange3point( Double x1, Double y1,Double x2,Double y2,Double x3,Double y3 ){
        Double d1 = Math.sqrt( Math.pow((x2 - x1 ),2) + Math.pow((y2 - y1 ),2) );
        Double d2 = Math.sqrt( Math.pow((x3 - x1 ),2) + Math.pow((y3 - y1 ),2) );
        Double d3 = Math.sqrt( Math.pow((x3 - x2 ),2) + Math.pow((y3 - y2 ),2) );
        return (d1+d2+d3)/3;
    }
    
    public Boolean palindrome( String words ){
        List<String> cadena = words.split('');
  		Integer cantidad = cadena.size();
        Boolean bandera = true;
        
        for( String word : cadena ){
            if( word == cadena[cantidad] ){
                bandera = false;
            }   
            cantidad--;
        }
        return bandera;
    }
    public String numMasPopular( List<Integer> datos ){
        String msg = '';
        Integer cantidad = datos.size();
        
        Map<Integer, Integer> mapValores = new Map<Integer, Integer>();
        for( Integer dato : datos ){
            mapValores.put(dato, 0);
        }
        for( Integer dato : datos ){
            mapValores.put(dato, mapValores.get(dato) + 1 );
        }
        
        return msg;
    }    
}
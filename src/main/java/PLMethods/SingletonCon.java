package PLMethods;


import businessoperationslayer.Bws_Service;


public class SingletonCon {
    private static SingletonCon wb= null;
    private Bws_Service service = null;
    
    private SingletonCon(){
        service = new Bws_Service();
    }
    
    public static Bws_Service getInstance(){
        wb = new SingletonCon();
        return wb.service ;
    }
}

import proxy.JAXBException_Exception;
import proxy.Releve;
import proxy.ReleveWS;
import proxy.ReleveWS_Service;

public class Client1 {
    public static void main(String[] args) throws JAXBException_Exception {
        ReleveWS stub = new ReleveWS_Service().getReleveWSPort();
        Releve rel1 = stub.getReleve();
        System.out.println(rel1.toString());



    }
}

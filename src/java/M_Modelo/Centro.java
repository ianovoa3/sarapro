package M_Modelo;

import M_Util.Elomac;
import static M_Util.M_Procedure.Group;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;

public class Centro extends Elomac{
	public  Centro ( ){ 
		super("centro",1);
	}
        
    public String CentroAdmin(String[] parametrosCentroAdmin){
        try {
            JSONArray arrayConsulta = new JSONArray(Elomac.M_ResultSet(Group(parametrosCentroAdmin, '~'), 26));
            return arrayConsulta.toString();
        } catch (Exception e) {
            return e.getMessage();
        }
    }
    public ArrayList consultacentro(){
            Connection cnn;
            Statement sentencia;
            ResultSet rs;
            ArrayList lista=new ArrayList();
            try {
                cnn=obtenerConn();
                sentencia=cnn.createStatement();
                rs=sentencia.executeQuery("SELECT * FROM centro");
                while(rs.next()){
                lista.add(rs.getString("nom_centro"));
                }
            } catch (Exception e) {
                 Logger.getLogger(Ciudad.class.getName()).log(Level.SEVERE, null, e);
            }
            
            return lista;
        }
}
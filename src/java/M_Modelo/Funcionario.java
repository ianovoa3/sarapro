package M_Modelo;

import M_Util.Elomac;
import VO.FuncionarioVO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Funcionario extends Elomac{
	public  Funcionario ( ){ 
		super("Funcionario",1);
	}
//        public boolean RegistrarFuncionario(Object[] fun){
//            return (boolean)this.Registar(Group(fun,'~'), 2);
//        }
        
        public String ListaAsignarRoles(String idCentro){
            String[] campos ={"2"};
            String listaFun1 = new Elomac(26,1).Select(campos);
            String listaNegativa = "";
            try {
                for (int i = 0; i < new JSONArray(listaFun1).length(); i++) {
                    JSONObject jso = new JSONArray(listaFun1).getJSONObject(i);
                    if(i == 0)
                        listaNegativa += jso.getString("id_funcionario"); 
                    else
                        listaNegativa += ","+jso.getString("id_funcionario"); 
                }
                    
                   String[] campos1 = {"0","1","2","4","6","8"}; 
                   return (new Elomac(20,2).Select(campos1,"[{colum:0,operador:7,valor1:'"+listaNegativa+"',añadir:0},{colum:3,operador:0,valor1:"+idCentro+"}]"));
            } catch (JSONException ex) {
                return("no se pudo");
            }
        }
        
        public boolean ModificarContraseña(String[] parametrosModifContr){
            return (boolean)this.Registar(Group(parametrosModifContr,'~'), 20);
        }
        
        public String Logueo(String[] paramUser){
            try {
                JSONArray arrayConsulta = new JSONArray(Elomac.M_ResultSet(Group(paramUser, '~'), 21));
                return arrayConsulta.toString();
            } catch (Exception e) {
                return e.getMessage();
            }
        }
        public boolean registrarUsuario(FuncionarioVO funcionariovo){
            Connection cnn=null;
            Statement sentencia=null;
            boolean operacion=false;
            ResultSet rs;
            int tipodedocumento=0;
            try {
               cnn=obtenerConn();
               sentencia=cnn.createStatement();
               System.out.println("tipo::"+funcionariovo.getTipoIdenti());
               rs=sentencia.executeQuery("SELECT id_tipo_documento  FROM tipo_documento WHERE  nom_tipo_documento='"+funcionariovo.getTipoIdenti()+"'");
               while(rs.next()){
              tipodedocumento=rs.getInt("id_tipo_documento");
               }
               System.out.println("tipo::"+tipodedocumento);
              sentencia.executeUpdate("INSERT INTO funcionario(id_tipo_documento,num_documento,nom_funcionario,apellidos,correo,cargo,ip_sena,contraseña,id_estado,id_area_centro) VALUES('"+tipodedocumento+"','"+funcionariovo.getNumeroIdentificacion()+"','"+funcionariovo.getNombre()+"','"+funcionariovo.getApellido()+"','"+funcionariovo.getEmail()+"','"+funcionariovo.getCargo()+"','"+funcionariovo.getIpSena()+"','"+funcionariovo.getClave()+"','"+1+"','"+1+"')");
              operacion=true;
            } catch (Exception e) {
                 Logger.getLogger(Funcionario.class.getName()).log(Level.SEVERE, null, e);
            }
            return operacion;
        }
       
}
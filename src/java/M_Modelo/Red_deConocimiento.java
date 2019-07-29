/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package M_Modelo;

import M_Controller.Linkeos.sesion_controller;
import M_Util.M_Connection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author FAMILIA NOVOA
 */
public class Red_deConocimiento extends M_Connection{
    public ArrayList selectred(){
                Connection cnn=null;
                ResultSet rs;
                Statement sentencia;
                ArrayList lista=new ArrayList();
            try {
              cnn=obtenerConn();
              sentencia=cnn.createStatement();
              rs=sentencia.executeQuery("SELECT * FROM area");
              while(rs.next()){
                  lista.add(rs.getString("nom_area"));    
              }
            } catch (Exception e) {
                Logger.getLogger(Red_deConocimiento.class.getName()).log(Level.SEVERE, null, e);
            }
            return lista;
        }
      public ArrayList selectprograma(){
                Connection cnn=null;
                ResultSet rs;
                Statement sentencia;
                ArrayList lista=new ArrayList();
            try {
              cnn=obtenerConn();
              sentencia=cnn.createStatement();
              rs=sentencia.executeQuery("SELECT * FROM programa");
              while(rs.next()){
                  lista.add(rs.getString("nom_programa"));    
              }
            } catch (Exception e) {
                Logger.getLogger(Red_deConocimiento.class.getName()).log(Level.SEVERE, null, e);
            }
            return lista;
        }
      public boolean registrored(String red,String [] programas){
          boolean operacion=false;
          Connection cnn=null;
          Statement sentencia=null;
          ResultSet rs=null;
          int idred=0;
          try {
              cnn=obtenerConn();
              sentencia=cnn.createStatement();
              sentencia.executeUpdate("INSERT INTO area(nom_area) VALUES('"+red+"')");
              rs=sentencia.executeQuery("SELECT * FROM area WHERE nom_area='"+red+"'");
              while(rs.next()){
              idred=rs.getInt("id_area");
              }
              for(int i=0;i<programas.length;i++){
                  sentencia.executeUpdate("INSERT INTO detalles_area(id_area,id_programa) VALUES('"+idred+"','"+programas[i]+"')");
              }
              operacion=true;   
          } catch (Exception e) {
               Logger.getLogger(Red_deConocimiento.class.getName()).log(Level.SEVERE, null, e);
          }
          return operacion;
      }
      public ArrayList consultaprogramas(String redconsulta){
          ArrayList consultaprogramas=new ArrayList();
          Connection cnn=null;
          ResultSet rs=null;
          Statement sentencia=null;
          try {
              cnn=obtenerConn();
              sentencia=cnn.createStatement();
              rs=sentencia.executeQuery("SELECT pr.nom_programa from programa pr inner join detalles_area da on pr.id_programa=da.id_programa inner join area ar on ar.id_area=da.id_area WHERE ar.nom_area='"+redconsulta+"'");
              while(rs.next()){
                  consultaprogramas.add(rs.getString("pr.nom_programa"));
              }
          } catch (Exception e) {
               Logger.getLogger(Red_deConocimiento.class.getName()).log(Level.SEVERE, null, e);
          }
          return consultaprogramas;
      }
    
}

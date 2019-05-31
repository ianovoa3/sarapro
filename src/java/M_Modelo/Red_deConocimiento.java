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
    
}

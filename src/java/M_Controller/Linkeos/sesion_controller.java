package M_Controller.Linkeos;

import M_Modelo.Funcionario;
import M_Modelo.Red_deConocimiento;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@WebServlet(name = "principal", urlPatterns = {"/principal"})
public class sesion_controller extends HttpServlet {
 private PrintWriter respuesta;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, JSONException {
        response.setContentType("text/html;charset=UTF-8");
        Funcionario funcionario=new Funcionario();
        int id_condicion=1;
        try {
        int selectred=Integer.parseInt(request.getParameter("selectred"));
        System.out.println("selectred"+selectred);
            if (selectred==1){
                Red_deConocimiento reddeconocimiento=new Red_deConocimiento();
               reddeconocimiento.selectred();
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("no llego");
        }
        try (PrintWriter out = response.getWriter()) {
            HttpSession sesion = request.getSession();
            int opcion =2;
            try {
             opcion = Integer.parseInt(request.getParameter("op"));
            } catch (Exception e) {
                System.out.println(opcion);
                System.out.println("Cerrar sesion");
            }
            switch (opcion) {
                case 1:
                    String[] loguinUser = {request.getParameter("user"),DigestUtils.md5Hex(request.getParameter("pwd"))};
                    String resultado = new Funcionario().Logueo(loguinUser);
                    if (resultado==null) {
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    } else {
                        JSONObject funJ = new JSONArray(resultado).getJSONObject(0);
                        int rol = funJ.getJSONArray("id_rol").getInt(0);               
                        if(rol != 5){
                            sesion.setAttribute("idUser", funJ.getJSONArray("id_funcionario").getInt(0));
                            sesion.setAttribute("nomUser",funJ.getJSONArray("nom_funcionario").getString(0));
                            sesion.setAttribute("idRol", rol);
                            sesion.setAttribute("idCentro", funJ.getJSONArray("id_centro").getInt(0));
                            id_condicion=funJ.getJSONArray("id_funcionario").getInt(0);
                             sesion.setAttribute("estado","activo");
                        }else{
                             sesion.setAttribute("estado","activo");
                            sesion.setAttribute("idRol", rol);
                        }
                        if(rol==5){    
                            request.getRequestDispatcher("administrador/administradorPrincipal.jsp").forward(request, response);
                        }
                        if(funcionario.consultaestado(id_condicion)==1){
                        switch (rol) {
                            case 1: 
                                request.getRequestDispatcher("instructor/instructorPrincipal.jsp").forward(request, response);
                                break;
                            case 2:
                                request.getRequestDispatcher("Equipo/equipoPrincipal.jsp").forward(request, response);
                                break;
                            case 3:
                                request.getRequestDispatcher("Equipo/equipoPrincipal.jsp").forward(request, response);
                                break;
                            case 4:
                                request.getRequestDispatcher("coordinador/coordinadorPrincipal.jsp").forward(request, response);
                                break;
                        }
                    }   
                     else           
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                  }
                    break;
                case 2:
                    try {
                        
                         sesion.removeAttribute("estado");  
                         sesion.setAttribute("idRol",null);
                         sesion.invalidate();
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                    break;
                case 3:
                    request.getRequestDispatcher("inicio/olvidoCuenta/olvidoCuenta.jsp").forward(request, response);
                    break;
                case 4:
                     request.getRequestDispatcher("administrador/administradorPrincipal.jsp").forward(request, response);
                     break;
                default:
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
            }
        } catch (Exception e) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (JSONException ex) {
            Logger.getLogger(sesion_controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (JSONException ex) {
            Logger.getLogger(sesion_controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

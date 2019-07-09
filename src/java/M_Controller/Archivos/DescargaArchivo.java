package M_Controller.Archivos;

import M_Modelo.Rankin;
import M_Util.Elomac;
import com.sun.activation.registries.MimeTypeFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;

@WebServlet(name = "DescargaArchivo", urlPatterns = {"/DescargaArchivo"})

public class DescargaArchivo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, JSONException {
        response.setContentType("text/html;charset=UTF-8");
       //PrintWriter out = response.getWriter();
        //System.out.printl();
        try {
            String archivos = request.getParameter("archivo");
            String tipo = "pdf";
            if (request.getParameter("version") != null) {
                String[] paramRankin;
                //jso[0] = ['Rankin_Controller','[{opcion:2,paramRankin:[0,'+idVersion+',0,0]}]';
                String arr = "[0," + request.getParameter("version") + ",0,0]";
                paramRankin = Elomac.M_toArray(arr);
                paramRankin[0] = "2";
                if (new Rankin().RegistrarRankin(paramRankin)) {
                    System.out.println("Exito");
                } else {
                    System.out.println("Fallo");
                }
            }
            String path = request.getRealPath("");
            Archivos archivo1 = new Archivos();
            String archivos1 = path+archivo1.getBase();
            //System.out.println("NOMBRE ARCHIVO"+nombre);
            String archivo = archivos1 + archivos;
            String[] parts = archivo.split("\\.");
            System.out.println("archivo"+archivo);
            int i = parts.length - 1;
            tipo = parts[i];
            File f = new File(archivo);
            InputStream in = new FileInputStream(f);
            ServletOutputStream outs = response.getOutputStream();
            String mimeType=new MimetypesFileTypeMap().getContentType(f);
            response.setContentType(mimeType);
            response.setContentLength(in.available());
            response.setHeader("Content-Disposition", "attachment; filename=\""+f.getName()+"\"");
            int bit = 0;
            try {
                while ((bit=in.read())!=-1) {
                    outs.write(bit);
                }
            } catch (IOException ioe) {
                ioe.printStackTrace(System.out);
            }
            outs.flush();
            outs.close();
            in.close();
           
        } finally {
            //out.close();
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
            Logger.getLogger(DescargaArchivo.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(DescargaArchivo.class.getName()).log(Level.SEVERE, null, ex);
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

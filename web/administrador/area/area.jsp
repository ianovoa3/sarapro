<%@page import="java.util.ArrayList"%>
<%@page import="M_Modelo.Red_deConocimiento"%>
<%int j=0;%>
<div class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Añadir otro programa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <select id="selectprograma">
          <% Red_deConocimiento reddecon=new Red_deConocimiento();
            ArrayList programa=reddecon.selectprograma();
            for(int i=0;i<programa.size();i++){
          %>
         <option><%=programa.get(i)%></option>
          <%}%>
          </select>
      </div>
    </div>
  </div>
</div>
<div class="content" style="margin-left: 10%;">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="css/multi-select.css">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="contenedorFormulario col-md-10" style="margin-top: 3%;">
                    <div class="col-md-6">
                        <label>Red de Conocimiento</label>
                        <input required  placeholder="Nombre de la Red"type="text" class="form-control inputs"  name="redc" id="areaC">
                    </div>
<!--                    <div class="col-md-6">
                        <label>Líder de la red</label>
                        <input required placeholder="Lider de la Red" type="text" class="form-control inputs"  name="redlider" id="areaL" >
                    </div>-->
                    
                    <div class="col-md-6" id="programasnuevos">
                        <label>Programas de formacion</label>
                        <select id="SelectItem" class="itemselect" multiple="multiple">
                        </select> 
                    </div>

                    <div class="col-md-6" id="programas">
                        <label>Programas de formacion</label>
                        <select class="custom-select" multiple>                  
                        </select>
                        <button type="button" class="btn btn-info" id="btnprograma" style="margin-bottom:2%">Añadir Programa</button> 
                    </div>
                    <div class="col-md-7"> 
                        <button type="button" class="btn btn-info" id="btnArea" style="margin-bottom:2%" name="button">Guardar Red</button>    
                    </div>
                    <div class="col-md-11 col-md-offset-1">
                        <article  class="col-md-11 testilo">
                        <table id="tablaarea" class="table table-hover">
                            <thead>
                                <tr class="active">
                                    <td>N°</td>
                                    <td>Nombre área</td>
                                    <td>Modificar Red</td>
                                </tr>
                            </thead>
                            <tbody id="tablabody">
                                <%
                                Red_deConocimiento reddeconocimiento=new Red_deConocimiento();
                                ArrayList lista=reddeconocimiento.selectred();
                                for(int i=0;i<lista.size();i++){   
                                %>
                            <tr class="active">
                            <td><%=j=j+1%></td>
                            <td id="redconocimiento" value="<%=lista.get(i)%>"><%=lista.get(i)%></td>
                            <td><button  class='btn btn-info botonArea' onclick="modificarred('<%=lista.get(i)%>')">Modificar</button></td>
                            </tr>
                             <%}%>
                            </tbody>
                        </table>                                
                    </article>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <script>
     function modificarred(nombre){
      document.getElementById("areaC").value=nombre;
    }
    $(".close").click(function(){
        $(".modal").hide();
    });
   </script>
    <script type="text/javascript" charset="utf8" type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/notify.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.multi-select.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.quicksearch.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.cecily.js"></script>
    <script type="text/javascript" charset="utf8" src="administrador/area/js/area.js"></script>
</div>

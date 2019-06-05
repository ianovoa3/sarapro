<%@page import="java.util.ArrayList"%>
<%@page import="M_Modelo.Red_deConocimiento"%>
<%int j=0;%>
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
                    <div class="col-md-6">
                        <label>Programas de formacion</label>
                        <select id="SelectItem" class="itemselect" multiple="multiple">
                        </select>
                    </div>
                    <div class="col-md-7"> 
                        <button type="button" class="btn btn-info" id="btnArea" style="margin-bottom:2%" name="button">Guardar Red</button>    
                    </div>
                    <div class="col-md-10 col-md-offset-1">
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
                            <td><%=lista.get(i)%></td>
                            <td><button  class='btn btn-info botonArea' id="modificar">Modificar</button></td>
                            </tr>
                             <%}%>
                            </tbody>
                        </table>                                
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" charset="utf8" type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/notify.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.multi-select.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.quicksearch.js"></script>
    <script type="text/javascript" charset="utf8" src="js/jquery.cecily.js"></script>
    <script type="text/javascript" charset="utf8" src="administrador/area/js/area.js"></script>
</div>

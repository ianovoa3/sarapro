<%@page import="M_Modelo.Red_deConocimiento"%>
<%@page import="java.util.ArrayList"%>
<div class="content">
    <link href="css/carg.css" rel="stylesheet"/>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="contenedor">
                    <div id="formulario1">
                        <section class="col col-md-6">
                            <form action="">
                            <p><h3>Datos Personales</h3></p>
                            <label  class="col-md-12"  for="Centro">Tipo de Usuario</label>
                            <select class="form-control select" id="tipoUsuario" name="tipoUsuario">
                                <option value="A0">Seleccionar...</option>
                            </select>
                            <label>Nombre:</label>
                            <input type="text" class="form-control input" placeholder="Digite Nombre" id="nombre" maxlength="45">
                            <label>Apellido:</label>
                            <input type="text" class="form-control input" placeholder=" Digite Apellido" id="apellido" maxlength="100">
                            <label>Tipo Identificación:</label>
                            <select class="form-control select"  name="tipoIdenti" id="tipoIdenti">
                                <option value="A0" selected="selected">Selecciona...</option>
                            </select>
                            <label>Número Identificación:</label>
                            <input type="text" class="form-control input" placeholder="Digite Numero de Identificación" id="numeroIdentificacion" maxlength="20">
                            <label>Correo Eléctronico:</label>
                            <input type="text" class="form-control input" placeholder=" Digite Correo Eléctronico" id="email" maxlength="125">
                        </section>
                        <section class="col col-md-6">
                            <p><h3>Datos SENA:</h3> </p>
                            <label>Centro de Formación:</label>
                            <div class="form-group">
                                <select class="form-control select"  id="centroFormacion">
                                    <option value="A0" selected="selected">Seleccionar...</option>
                                </select>
                            </div>
                            <label  class="col-md-12"  for="area">Red de Conocimiento:</label>
                            <select class="form-control select" id="reddeconocimiento">
                            <option value="A0" selected="selected">Seleccionar...</option>
                            <%Red_deConocimiento reddeconocimiento=new Red_deConocimiento();
                                ArrayList lista=reddeconocimiento.selectred();
                           for(int i=0;i<lista.size();i++){
                              %>
                              <option><%=lista.get(i)%></option>
                            <%}%>
                            </select>
                            <label>Ip SENA:</label>
                            <input type="text" class="form-control input" placeholder=" Digite Ip SENA" id="ipSena" maxlength="6">
                            <label  for="cargo">Cargo</label>
                            <input type="text" class="form-control input" placeholder=" Digite cargo" id="cargo" maxlength="45">
                            <center>
                                <br/>
                                <div id="AnimacionCargando" class="col-md-12" style="display: none;">
                                    <p class="col-md-8" ALIGN=right>Creando usuario:</p>
                                    <div class="windows8 col-md-4">
                                        <div class="wBall" id="wBall_1">
                                            <div class="wInnerBall"></div>
                                        </div>
                                        <div class="wBall" id="wBall_2">
                                            <div class="wInnerBall"></div>
                                        </div>
                                        <div class="wBall" id="wBall_3">
                                            <div class="wInnerBall"></div>
                                        </div>
                                        <div class="wBall" id="wBall_4">
                                            <div class="wInnerBall"></div>
                                        </div>
                                        <div class="wBall" id="wBall_5">
                                            <div class="wInnerBall"></div>
                                        </div>
                                    </div>
                                </div>
                                <div id="divBtn">
                                    <button type="button" id="boton1" class="btn btn-info">Registrar Funcionario</button>
                                </div>
                            </center>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/notify.js"></script>
    <script type="text/javascript" src="js/jquery.cecily.js"></script>
    <script type="text/javascript" src="administrador/registroFuncionario/js/registroCoordinador.js"></script>
</div>

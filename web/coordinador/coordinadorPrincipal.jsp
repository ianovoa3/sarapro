<%@page session = "true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" id="estru"> 
    <head>  
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
        <link rel="shotrcut icon" href="recursos/flavicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Sara-Coordinador</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/css/animate.min.css" rel="stylesheet"/>
        <link href="assets/css/paper-dashboardCoordinador.css" rel="stylesheet"/>
        <link href="assets/css/demo.css" rel="stylesheet" />
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/themify-icons.css" rel="stylesheet">
        <link href="assets/css/estilo.css" rel="stylesheet" type="text/css"/>
        
        <link href="assets/css/line-awesome-font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/line-awesome-font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/line-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/line-awesome.min.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body >
        <div class="wrapper">
            <div class="sidebar" data-background-color="white" data-active-color="danger">
                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a class="simple-text"> 
                            <img src="assets/img/logoCordi.png" alt="" />
                        </a>
                    </div>
                    <ul class="nav menu" id="menus">
                        <li class="active" value="1"><a><i class="la la-user"></i><label style='cursor:pointer;' id="text1">Coordinador</label></a></li>
                        <li class="btntt" value="4"><a><i class="la la-edit" aria-hidden="true"></i><p><label style='cursor:pointer;' id="text4">Actualizar contraseña</label></p></a></li>
                        <li class="btntt" value="0"><a><i class="la la-bar-chart" aria-hidden="true"></i><label style='cursor:pointer;' id="text0">Consultar estadísticas</label></a></li>                        
                        <li class="btntt" value="6"><a><i class="la la-reorder" aria-hidden="true"></i><label style='cursor:pointer;' id="text6">Consultar reporte</label></a></li>
                        <li class="btntt" value="1"><a><i class="la la-check-circle" aria-hidden="true"></i><label style='cursor:pointer;' id="text1">Habilitar producto V.</label></a></li>
<!--                        <li class="btntt" value="2"><a><i class="icono izquierda fa fa-credit-card-alt" aria-hidden="true"></i><label style='cursor:pointer;' id="text2">Asignar Roles</label></a></li>-->
                        <li class="btntt" value="3"><a><i class="la la-plus-circle" aria-hidden="true"></i><label style='cursor:pointer;' id="text3">Crear Categorías</label></a></li>
                        <li class="btntt" value=""><a href="principal?opcion=2"><i class="glyphicon glyphicon-off" aria-hidden="true"></i><label style='cursor:pointer;' id="text3">Cerrar Sesión</label></a></li>
                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar bar1"></span>
                                <span class="icon-bar bar2"></span>
                                <span class="icon-bar bar3"></span>
                            </button>
                            <h3 class="palabrasPrincipalesCoordinador"><label id="CasoNombre"></label></h3>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="ti-bell"></i>
                                        <p class="notification"><label id="ccNoti">0</label></p>
                                        <p>Productos Virtuales a Habilitar</p>
                                        <b class="caret"></b>
                                    </a>
                                    <ul class="dropdown-menu" id="tablaAprobarP">
                                        <li><a><label class="Notify">No hay Productos a Habilitar</label></a></li>
                                    </ul>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div id="cuerpo" >

                  
                </div>
                <footer class="text-center footerDown" style="margin-top: 3%;">
                    <div class="container">
                        <div class="row">
                            <div class="footer col-md-4 img-responsive" style="margin-top:-10px;">
                                <img src="assets/img/saranegro.png">
                            </div>
                            <div class="footer-col col-md-4">
                                <h3 style="color:black; font-size:20px; margin-top:12px;">Siguenos en:</h3>
                                <ol class="list-inline" style="margin-top:-5px;">
                                    <li>
                                        <a href="https://plus.google.com/u/0/101782866518065902776" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                                    </li>


                                    <li>
                                        <a href="https://github.com/SaraPro52/LppConsola" class="btn-social btn-outline"><i class="fa fa-fw fa-github"></i></a>
                                    </li>
                                </ol>
                            </div>
                            <div class="footer-col col-md-4">

                                <img src="assets/img/senanegro.png">
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-checkbox-radio.js"></script>
    <script src="assets/js/bootstrap-notify.js"></script>
    <script src="assets/js/paper-dashboard.js"></script>
    <script src="assets/js/demo.js"></script
    <script type="text/javascript" src="js/jquery.cecily.js"></script>
    <script type="text/javascript" src="coordinador/js/PrincipalCoordinador.js"></script>
    <script>
        var nomUser = '<%= session.getAttribute("nomUser")%>';
        var idUser = '<%= session.getAttribute("idUser")%>';
        var idRol = '<%= session.getAttribute("idRol")%>';
        var idCentro = '<%= session.getAttribute("idCentro")%>';
        var tem = '[{nomUser:' + nomUser + ',idUser:' + idUser + ',idRol:' + idRol + ',idCentro:' + idCentro + '}]';
        if (idUser == null && idRol == null && nomUser == null && idCentro == null) {
            location.replace('index.jsp');
        } else {
            cargaC(idRol, tem);
            $.notify({
                message: "Bienvenido a <b>Sara Pro</b> - Coordinador " + nomUser + "."
            }, {
                type: 'success',
                timer: 4000
            });
        }
    </script>
</html>

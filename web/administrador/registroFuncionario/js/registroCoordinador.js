var selector = [], hilo = [], jso = [], data = [], datos = [], estados = "", men = "";
var ob = new $.Luna("RegistroFuncionario", selector);
//ob.Vivo("RegistroFuncionario");
jso[0] = ['Crud_Controller', '[{opcion:3,tabla2:10,tipo:2,elegir:["2","3"],delimitador:[],id:0,opSelect:4}]'];
selector[0] = $("#centroFormacion");
datos[0] = {nombre: "Select"};
ajax(0, datos[0]);

//$("#centroFormacion").change(function () {
//    $("#area").empty().append("<option selected='selected'>selecciona...</option>");
//    jso[4] = ['Crud_Controller', '[{opcion:3,tabla2:10,tipo:2,elegir:[0,1],delimitador:"[{colum:2 ,operador:0 ,valor1:' + $("#centroFormacion").val() + '}]",id:0,opSelect:6}]'];
//    selector[4] = $("#area");
//    datos[4] = {nombre: "Select"};
//    ajax(4, datos[4]);
//});
          
$("#boton1").click(function () {
    $(".remove").remove();
    var boo = 0;
    var inputs = $(".input");
    var selec = $(".select");
    var input, selet;
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].value == "") {
            input = $(inputs[i]);
            input.focus().after("<div class='remove'><font color='red'>Rellene este campo</font><div>");       
        } else {
            boo++;
        }
    }
    for (var i = 0; i < selec.length; i++) {
        if (selec[i].value === "A0") {
            selet = $(selec[i]);
            selet.focus().after("<div class='remove'><font color='red'>seleccione una opcion</font><div>");
        } else {
            boo++;
        }
    }
    if(boo==11){
        var nombre=document.getElementById('nombre').value;
        var apellido=document.getElementById('apellido').value;
        var tipoUsuario=document.getElementById('tipoUsuario').value;
        var tipoIdenti=document.getElementById('tipoIdenti').value;
        var numeroIdentificacion=document.getElementById('numeroIdentificacion').value;
        var email=document.getElementById('email').value;
        var centroFormacion=document.getElementById('centroFormacion').value;
        var reddeconocimiento=document.getElementById('reddeconocimiento').value;
        var ipSena=document.getElementById('ipSena').value;
        var cargo=document.getElementById('cargo').value;
        var clave=document.getElementById('clave').value;
        console.log("clave:"+clave)
    $.ajax({
        type:'POST',
        data:{nombre:nombre,apellido:apellido,tipoUsuario:tipoUsuario,tipoIdenti:tipoIdenti,numeroIdentificacion:numeroIdentificacion,email:email,centroFormacion:centroFormacion,reddeconocimiento:reddeconocimiento,ipSena:ipSena,cargo:cargo,clave:clave},
        url:'actor',
            success: function (response) {
                alert('Enviado'+response.nombre);
            }
        });
        }  
    });
//function btn() {
  //  $("#divBtn").hide();
    //$("#AnimacionCargando").show();
    //jso[3] = ['Funcionario_Controller', "[{opcion:1,datos:['" + $("#tipoUsuario").val() + "','" + $("#tipoIdenti").val() + "','" + $("#numeroIdentificacion").val() + "','" + $("#nombre").val() + "','" + $("#apellido").val() + "','" + $("#email").val() + "','" + $("#cargo").val() + "','" + $("#ipSena").val() + "','1','" + $("#centroFormacion").val() + "','" + $("#area").val() + "']}]"];
   // men = $("#nombre").val();
   // datos[1] = {nombre: "btn"};
   // ajax(3, datos[1]);
//}
function ajax(i, datos) {
    hilo[i] = new Worker("js/worker.js");
    hilo[i].postMessage(jso[i]);
    hilo[i].onmessage = function (event) {
        data[i] = event.data;
        ob.cargarTabla(data[i], selector[i], datos);
        hilo[i].terminate();
        peticionCompleta(i);
    };
}

function peticionCompleta(i) {
    if (i == 0) {
        jso[1] = ['Crud_Controller', '[{opcion:3,tabla2:49,tipo:1,elegir:["0","1"],delimitador:[],id:0,opSelect:4}]'];
        selector[1] = $("#tipoUsuario");
        datos[1] = {nombre: "Select"};
        ajax(1, datos[1]);
    } else if (i == 1) {
        jso[2] = ['Crud_Controller', '[{opcion:3,tabla2:55,tipo:1,elegir:[],delimitador:[],id:0,opSelect:1}]'];
        selector[2] = $("#tipoIdenti");
        datos[2] = {nombre: "Select"};
        ajax(2, datos[2]);
    } else if (i == 3) {
        var daMen = data[i].split("$$");
        if (daMen[0] == "true") {
            estados = ("success");
            men = "El funcionario  " + men + " " + daMen[1];
        } else {
            estados = ("error");
            men = "El funcionario  " + men + " " + daMen[1];
        }
        $.notify(men, estados);
        jso[6] = ['Administrador_Controller', '[{opcion:1,ti:' + idRol + '}]'];
        datos[6] = {caso: "Deshabilitar Usuarios"};
        ajax(6);
    } else if (i == 6) {
        $("#CasoNombre").text(datos[i].caso);
        $("#cuerpo").empty();
        $("#cuerpo").append(data[i]);
    }
}

<div class=""> 
    <link rel="stylesheet" type="text/css" href="css/multi-select.css">
    <link href="assets/css/paper-dashboardEquipo.css" rel="stylesheet"/>
    <link href="assets/css/estilo_1.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
     <link rel="stylesheet" href="assets/css/estilo_1.css"/>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <section class="col-md-10">
                        <form id="formAgreLista">
                            <article class="col-md-12 " id="item" id="formulario">
                                <input type="hidden" value="1" id="tipoLis">
                                <div class="col-md-6" id="divnombre">
                                <label>Nombre de la Lista</label>
                                <input required="" type="text" class="form-control inputs1" id="NombreL"  placeholder=" Digite un  nombre para la lista">
                                </div>
                                <div class="col-md-6" id="divdescripcion">
                                <label>Descripci�n</label>
                                <textarea required class="form-control inputs1"  id="DescripcionL" placeholder="Describa una descripci�n para la lista" rows="2" id="comment"></textarea>
                                </div>
                            </article>
                        </form>
                         <article class="col-md-6 " id="tablax">
                            <form class="col-md-10" id="formAgregaItem">
                                <div class="col-md-12">
                                    <label style="color: #E48D15;" id="lista" >Crear Item:</label>    
                                </div>
                                <div class="col-md-14">
                                    <label for="Descripcion">Descripci�n del item:</label>
                                    <textarea required class="form-control inputs" placeholder="Describa el item" rows="1" id="Descripcion"></textarea>
                                </div>   
                            </form>
                              <div class="col-md-3" id="divAgregar">
                                 <button  class="btn btn-info" id="btnItem">Agregar Item</button>
                             </div>
                        </article>
                        
                       
                        <article class="col-md-6" id="items">
                            <div id="SelectItemDiv">
                                <label>Items</label>
                                <select id="SelectItem" class="itemSelect" multiple="multiple">
                                </select>
                            </div>
                        </article>
                       
                        <button class="btn btn-info col-md-4"  id="BtnLista"> Crear Lista</button>
                    </section>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.multi-select.js"></script>
<script type="text/javascript" src="js/jquery.quicksearch.js"></script>
<script type="text/javascript" src="js/notify.js"></script>
<script type="text/javascript" src="js/jquery.cecily.js"></script>
<script type="text/javascript" src="Equipo/ListaChequeo/js/listaChequeo.js"></script>
<script>
    listaChequeo(idTipoItem, idUser);
</script>
</div>

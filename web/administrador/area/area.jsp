<div class="content" style="margin-left: 10%;">
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="css/multi-select.css">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="contenedorFormulario col-md-10" style="margin-top: 3%;">
                    <div class="col-md-6">
                        <label>Nombre del �rea</label>
                        <input required  placeholder="Nombre del �rea"type="text" class="form-control inputs"  name="areac" id="areaC">
                    </div>
                    <div class="col-md-6">
                        <label>L�der del �rea</label>
                        <input required placeholder="Lider del �rea" type="text" class="form-control inputs"  name="areaL" id="areaL" >
                    </div>

                    <div class="col-md-6">
                        <label>Programas de formacion</label>
                        <select id="SelectItem" class="itemselect" multiple="multiple">
                        </select>
                    </div>
                    <div class="col-md-7"> 
                        <button type="button" class="btn btn-info" id="btnArea" style="margin-bottom:2%" name="button">Guardar �rea</button>    
                    </div>
                    <div class="col-md-10 col-md-offset-1">
                        <table id="tablaarea" class="table table-hover">
                            <thead>
                                <tr class="active">
                                    <td>N�</td>
                                    <td >Nombre �rea</td>
                                    <td>Lider de �rea</td>
                                    <td>Modificar lider</td>
                                </tr>
                            </thead>
                            <tbody id="tablabody">
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

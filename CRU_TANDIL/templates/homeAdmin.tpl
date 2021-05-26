{include file="headerAdmin.tpl"}

<div class="ttitulo">
    <h2><strong>Listado de Materiales</strong></h2>
</div>

<div class="container">
    <div class="container-fluid">
	    <table id="tmateriales"class="table table-bordered text-center" style="margin-top:5%;background-color: rgba(255, 255, 255, 0.897)">
            <thead>
                
                <tr>
                    <th><h5><strong>Material</strong></h5></th>
                    <th><h5><strong>Tratamiento</strong></h5></th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$materiales  key=k item=material}
                    <tr>
                        <td>{$material.tipo_material}</td>
                        <td>
                        {$material.tratamiento}
                        <div style="float:right;"><button onclick="eliminarMaterial({$material.nmaterial})" type="button" class="btn btn-secondary">
                                    Borrar</button>
                        <button type="button" class="btn btn-secondary btonModal" data-toggle="modal" data-target="#myModal" 
                                data-nmaterial="{$material.nmaterial}" data-tipo_material="{$material.tipo_material}" data-tratamiento="{$material.tratamiento}">
                                   Editar</button></div>
                        </td>                     
                    </tr> 
                {/foreach}            
            </tbody>
        </table>
        <div class="form-group">
            <div class="row">
                <div class="col-md-5">
                    <a class="btn btn btn-lg" href="nuevoMaterial"
                        style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Nuevo Material</a>
                </div>
            </div>
        </div>
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="container sform">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well well-sm">
                                <form class="form-horizontal" id="form-material" method="post">
                                    <fieldset>
                                        <hr>
                                        <legend class="text-center header "><b>Editar Material</b></legend>
                                        <hr>
                                        <div class="input-group mb-3">
                                            <input id="nmaterialModal" name="nmaterial" type="hidden" class="form-control">
                                            <span class="input-group-text" id="inputGroup-sizing-default">Tipo de Material</span>
                                            <input id="materialModal" name="material" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="inputGroup-sizing-default">Tratamiento</span>
                                            <textarea id="tratamientoModal" name="tratamiento" class="form-control" rows="3"></textarea>
                                        </div>
                                        
                                    </fieldset>
                                </form>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                    <button type="submit" id="btn_editar" form="form-material" class="btn btn-danger">Editar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
<script src="js/homeAdmin.js">
{include file="footer.tpl"}
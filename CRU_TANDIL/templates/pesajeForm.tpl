{include file="header.tpl"}

<div class="container sform">
            <div class="row">
                <div class="col-md-12" id="form"style="margin-top:5%; background-color: rgba(255, 255, 255, 0.897)">
                    <div class="well well-sm">
                        <form class="form-horizontal" id="form-pesaje" method="post">
                            <fieldset>
                                <hr>
                                <legend class="text-center header "><b>Registro de Material</b></legend>
                                <hr>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Rol</span>
                                    <select onchange="ocultarId(this)" name="rol" id="rol" class="form-select col-md-1 col-md-offset-2 text-center" aria-label="Default select example">
                                        <option selected>Elija una opción</option>
                                        <option value="1">Cartonero</option>
                                        <option value="2">Vecino Buena Onda</option>
                                </select>
                                </div>
                                
                                <div id="idUsuario" class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Usuario</span>
                                    <input id="id" name="id" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Peso</span>
                                    <input id="peso" name="peso" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Material</span>
                                    <select  id="material" name="material" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                        <option> Seleccione  </option>
                                            {foreach from=$materiales item=material}
                                                <option value="{$material.nmaterial} ">{$material.tipo_material}</option>
                                            {/foreach}
                                    </select>
                                </div>
                                
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<br>
<div class="form-group">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-5">
            <a class="btn btn btn-lg" href="home"
                style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Volver</a>
        </div>
        <div class="col-md-4">
            <button type="submit" id="btn-continuar" form="form-pesaje" class="btn btn btn-lg"
                style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Continuar</button>
        </div>
    </div>
</div>
<script src="js/pesajeForm.js">

{include file="footer.tpl"}
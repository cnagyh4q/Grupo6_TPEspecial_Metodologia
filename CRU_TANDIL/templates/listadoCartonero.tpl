{include file="headerAdmin.tpl"}

<div class="ttitulo">
    <h2><strong>Listado de Cartoneros</strong></h2>
</div>

<div class="container">
    <div class="container-fluid">
        <table id="tmateriales" class="table table-bordered text-center"
            style="margin-top:5%;background-color: rgba(255, 255, 255, 0.897)">
            <thead>

                <tr>
                    <th>
                        <h5><strong>Nombre-Apellido</strong></h5>
                    </th>
                    <th>
                        <h5><strong>Vehiculo</strong></h5>
                    </th>
                    <th>
                        <h5><strong>DNI</strong></h5>
                    </th>
                    <th>
                        <h5><strong>Direccion</strong></h5>
                    </th>
                    <th>
                        <h5><strong>Nacimiento</strong></h5>
                    </th>
                    <th>
                        <h5><strong>Telefono</strong></h5>
                    </th>
                </tr>
            </thead>

            <tbody>
                {foreach from=$cartoneros  key=k item=cartonero}
                    <tr>
                        <td>{$cartonero.nombre}</td>
                        <td>{$cartonero.vehiculo}</td>
                        <td>{$cartonero.dni}</td>
                        <td>{$cartonero.direccion}</td>
                        <td>{$cartonero.nacimiento}</td>
                        <td>{$cartonero.telefono}</td>
                        <td>
                        <div style="float:right;"><button onclick="eliminarCartonero({$cartonero.ncartonero})" type="button"
                                class="btn btn-secondary">
                                Borrar</button>
                            <button type="button" class="btn btn-secondary btonModal" data-toggle="modal"
                                data-target="#myModal" data-ncartonero="{$cartonero.ncartonero}" data-nombre="{$cartonero.nombre}" data-dni="{$cartonero.dni}"
                                data-vehiculo="{$cartonero.vehiculo}" data-direccion="{$cartonero.direccion}"
                                data-nacimiento="{$cartonero.nacimiento}" data-telefono="{$cartonero.telefono}">
                                Editar</button>
                        </div>
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>

        <div class="form-group">
            <div class="row">
                <div class="col-md-5">
                    <a class="btn btn btn-lg" href="nuevoCartonero"
                        style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Nuevo
                        Cartonero</a>
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
                                    <form class="form-horizontal" id="form-edit-cartonero" method="post">
                                        <fieldset>
                                            <hr>
                                            <legend class="text-center header "><b>Editar Cartonero</b></legend>
                                            <hr>
                                            <input id="ncartoneroModal" name="ncartonero" type="hidden" class="form-control">
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="required-field">Nombre - Apellido
                                                </span>
                                                <input name="nombre" id="nombreModal"type="text" class="form-control"
                                                    aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default" required>
                                            </div>

                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="required-field">Vehiculo</span>
                                                <input name="vehiculo" id="vehiculoModal" type="text" class="form-control"
                                                    aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default" required>
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="required-field">DNI</span>
                                                <input name="dni" type="number" id="dniModal" class="form-control"
                                                    aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default" required>
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text"
                                                    id="inputGroup-sizing-default">Direccion</span>
                                                <input name="direccion" id="direccionModal"type="text" class="form-control"
                                                    aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text"
                                                    id="inputGroup-sizing-default">Nacimiento</span>
                                                <input name="nacimiento" id="nacimientoModal" type="date" class="form-control"
                                                    aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text"
                                                    id="inputGroup-sizing-default">Telefono</span>
                                                <input name="telefono" id="telefonoModal" type="number" class="form-control"
                                                    aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default">
                                            </div>
                                        </fieldset>
                                    </form>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger"
                                            data-dismiss="modal">Cancelar</button>
                                        <button type="submit" id="btn_editar" form="form-edit-cartonero"
                                            class="btn btn-danger">Editar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/cartoneroEdit.js">
{include file="footer.tpl"}
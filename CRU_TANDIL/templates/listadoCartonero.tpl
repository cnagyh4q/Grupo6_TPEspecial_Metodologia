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
                    </tr>
                {/foreach}
            </tbody>
        </table>

        <div class="form-group">
        <div class="row">
            <div class="col-md-5">
                <a class="btn btn btn-lg" href="nuevoCartonero"
                    style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Nuevo Cartonero</a>
            </div>
        </div>
    </div>
    </div>
</div>
{include file="footer.tpl"}
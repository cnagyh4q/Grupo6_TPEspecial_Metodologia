{include file="headerAdmin.tpl"}

<div class="ttitulo">
    <h2><strong>Listado de Solicitudes</strong></h2>
</div>

<div class="container">
    <div class="container-fluid">
	    <table id="tmateriales"class="table table-bordered text-center" style="margin-top:5%;background-color: rgba(255, 255, 255, 0.897)">
            <thead>
                
                <tr>
                    <th><h5><strong>Nombre-Apellido</strong></h5></th>
                    <th><h5><strong>Direccion</strong></h5></th>
                    <th><h5><strong>Telefono</strong></h5></th>
                    <th><h5><strong>Franja Horaria</strong></h5></th>
                    <th><h5><strong>Volumen de los materiales</strong></h5></th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$solicitudes  key=k item=solicitud}
                    <tr>
                        <td>{$solicitud.nombre_apellido}</td>
                        <td>{$solicitud.direccion}</td>
                        <td>{$solicitud.telefono}</td>
                        <td>{$solicitud.franja_horaria}</td>
                        <td>{$solicitud.volumen_materiales}</td>          
                    </tr> 
                {/foreach}            
            </tbody>
        </table>
    </div>
</div>
{include file="footer.tpl"}
{include file="headerAdmin.tpl"}

<div class="ttitulo">
    <h2><strong>Listado de Materiales por Cartonero</strong></h2>
</div>

<div class="container">
    <div class="container-fluid">
	    <table id="tmateriales"class="table table-bordered text-center" style="margin-top:5%;background-color: rgba(255, 255, 255, 0.897)">
            <thead>
                
                <tr>
                    <th><h5><strong>Material</strong></h5></th>
                    <th><h5><strong>Peso</strong></h5></th>
                    <th><h5><strong>Cartonero</strong></h5></th>
                    <th><h5><strong>DNI</strong></h5></th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$matCartoneros item=matCartonero}
                    <tr>
                        <td>{$matCartonero.material}</td>
                        <td>{$matCartonero.peso} Kg</td>
                        <td>{$matCartonero.nombre}</td>
                        <td>{$matCartonero.dni}</td>     
                    </tr> 
                {/foreach}            
            </tbody>
        </table>
    </div>
</div>
{include file="footer.tpl"}
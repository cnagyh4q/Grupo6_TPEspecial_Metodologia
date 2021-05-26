{include file="header.tpl"}

<div class="container">
    <div class="container-fluid">
	    <table id="tmateriales"class="table table-bordered text-center" style="margin-top:5%;background-color: rgba(255, 255, 255, 0.897)">
            <thead>
                <tr>
                    <td colspan="2" ><h2><strong>Listado de Materiales</strong></h2></td>
                </tr>
                <tr>
                    <th><h5><strong>Material</strong></h5></th>
                    <th><h5><strong>Tratamiento</strong></h5></th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$materiales item=material}
                    <tr>
                        <td>{$material.tipo_material}</td>
                        <td>{$material.tratamiento}</td>
                    </tr>  
                {/foreach}            
            </tbody>
        </table>
    </div>
</div>

{include file="footer.tpl"}
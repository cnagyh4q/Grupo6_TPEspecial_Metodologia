{include file="header.tpl"}

<div class="container-fluid">
	<table class="table table-bordered table-hover">
		<thead>
            <tr>
                <th>
                    Material
                </th>
                <th>
                    Tratamiento
                </th>
             </tr>
        </thead>
        <tbody>
            {foreach from=$materiales item=material}
            <tr>
                 <div class="card w-75">
                     <div class="card-body">
                         <h5 class="card-title">{$material->tipo_material}{$material->tratamiento}</a></h5>
                     </div>
                 </div>
            </tr>      
          {/foreach}            
        </tbody>
    </table>
</div>


{include file="footer.tpl"}
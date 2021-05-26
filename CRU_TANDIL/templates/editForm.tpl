    <div class="modal-dialog">
      <div class="modal-content">
      <div>
        <div class="container sform">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                        <form class="form-horizontal" id="form-material" method="put">
                            <fieldset>
                                <hr>
                                <legend class="text-center header "><b>Editar Material</b></legend>
                                <hr>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Tipo de Material</span>
                                    <input id="nameLastname" name="material" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value={$material.tipo_material}>
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Tratamiento</span>
                                    <textarea id="direccion" name="tratamiento" class="form-control" rows="3"></textarea>
                                </div>
                            </fieldset>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
            <button type="submit" id="btn_editar" class="btn btn-danger" data-dismiss="modal">Editar</button>
       </div>
    </div>
        
      </div>
    </div>
  </div>
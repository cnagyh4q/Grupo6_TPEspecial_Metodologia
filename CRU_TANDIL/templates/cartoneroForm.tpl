{include file="headerAdmin.tpl"}

        <div class="container sform">
            <div class="row">
                <div class="col-md-12" id="form"style="margin-top:5%; background-color: rgba(255, 255, 255, 0.897)">
                    <div class="well well-sm" >
                        <form class="form-horizontal" id="form-cartonero" method="post">
                            <fieldset>
                                <hr>
                                <legend class="text-center header "><b>Nuevo Cartonero</b></legend>
                                <hr>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="required-field">Nombre - Apellido </span>
                                    <input name="nombre" type="text" class="form-control"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="required-field">Vehiculo</span>
                                    <input name="vehiculo" type="text" class="form-control"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="required-field">DNI</span>
                                    <input name="dni" type="number" class="form-control"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"required>
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Direccion</span>
                                    <input name="direccion" type="text" class="form-control"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Nacimiento</span>
                                    <input name="nacimiento" type="date" class="form-control"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Telefono</span>
                                    <input name="telefono" type="number" class="form-control"
                                        aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>
                            </fieldset>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
        <br>
        <br>
        <br>
        <br>
    <div class="form-group">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
                <a class="btn btn btn-lg" href="homeAdmin" style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Volver</a>
            </div>
            <div class="col-md-4">
                <button type="submit" id="btn-continuar" form="form-cartonero" class="btn btn btn-lg" style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Agregar</button>
            </div>
        </div>
    </div>
</div>
    <script src="js/cartoneroForm.js">

{include file="footer.tpl"}
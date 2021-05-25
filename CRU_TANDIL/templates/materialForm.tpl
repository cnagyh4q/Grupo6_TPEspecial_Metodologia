{include file="header.tpl"}

    <div>
        <div class="container sform">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                        <form class="form-horizontal" id="form-material" method="post">
                            <fieldset>
                                <hr>
                                <legend class="text-center header "><b>Nuevo Material</b></legend>
                                <hr>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Tipo de Material</span>
                                    <input id="nameLastname" name="material" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
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
        <br>
        <br>
        <br>
        <br>
    <div class="form-group">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
                <a class="btn btn-primary btn-lg" href="index.html" style=" font-weight: bold;color:black ;background-color: #2ECC71;">Volver</a>
            </div>
            <div class="col-md-4">
                <button type="submit" id="btn-continuar" form="form-material" class="btn btn-primary btn-lg" style=" font-weight: bold;color:black ;background-color: #2ECC71;">Continuar</button>
            </div>
        </div>
    </div>

    <script src="js/materialForm.js">
    {include file="footer.tpl"}
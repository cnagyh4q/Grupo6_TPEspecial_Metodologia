{include file="header.tpl"}
<div>
    <div class="container sform">
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm">
                    <form class="form-horizontal" id="form-solicitud" method="post">
                        <hr>
                        <legend class="text-center header "><b>Solicitud de Retiro</b></legend>
                        <hr>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Nombre-Apellido </span>
                            <input id="nameLastname" name="nombre" type="text" class="form-control"
                                aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Direccion</span>
                            <input id="direccion" name="direccion" type="text" class="form-control"
                                form="form-solicitud" aria-label="Sizing example input"
                                aria-describedby="inputGroup-sizing-default">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Telefono</span>
                            <input id="telefono" name="telefono" type="number" class="form-control"
                                aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Franja Horaría</span>
                            <select name="franja_horaria" class="form-select col-md-1 col-md-offset-2 text-center"
                                aria-label="Default select example">
                                <option selected>Elija una opción</option>
                                <option value="1">9-12 hs</option>
                                <option value="2">13-17 hs</option>
                            </select>
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Volumen Materiales</span>
                            <select name="volumen_materiales" class="form-select col-md-1 col-md-offset-2 text-center"
                                aria-label="Default select example">
                                <option selected>Elija una opción</option>
                                <option value="1"> A - Entra en una caja</option>
                                <option value="2"> B - Entra en el baúl de un auto</option>
                                <option value="3"> C - Entra en la caja de una camioneta</option>
                                <option value="3"> D - Es necesario un camión</option>
                            </select>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<br>
<div class="form-group">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-5">
            <a class="btn btn-primary btn-lg" href="home"
                style=" font-weight: bold;color:black ;background-color: #2ECC71;">Volver</a>
        </div>
        <div class="col-md-4">
            <button type="submit" id="btn-continuar" form="form-solicitud" class="btn btn-primary btn-lg"
                style=" font-weight: bold;color:black ;background-color: #2ECC71;">Continuar</button>
        </div>
    </div>
</div>
<script src="js/solicitudRetiro.js">
    {include file="footer.tpl"}
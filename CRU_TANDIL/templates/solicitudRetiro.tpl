<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="bootstrap-social.css">

    <title>CRU TANDIL</title>
</head>

<body>
    <nav class="navbar navbar-inverse" style="background-color: #48a259;">
        <div class="container-fluid">
            <div class="navbar-header">
                <img src="image/iconoReciclaje.png" width="80" height="70">
                <a class="navbar-brand titulo" style="color: black; font-size:40;" href="home">
                    CRU TANDIL
                </a>
            </div>
        </div>
    </nav>
<div>
    <div class="container sform">
        <div class="row">
            <div class="col-md-12" id="fsolicitud"style="margin-top:5%; background-color: rgba(255, 255, 255, 0.897)">
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
            <a class="btn btn btn-lg" href="home"
                style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Volver</a>
        </div>
        <div class="col-md-4">
            <button type="submit" id="btn-continuar" form="form-solicitud" class="btn btn    btn-lg"
                style=" font-weight: bold;color:black ;background-color:rgba(173, 250, 150, 0.925);">Continuar</button>
        </div>
    </div>
</div>
<script src="js/solicitudRetiro.js">
    {include file="footer.tpl"}
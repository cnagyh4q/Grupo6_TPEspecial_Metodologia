{include file="headerAdmin.tpl"}
    <div>
        <div class="container sform">
            <div class="row">
                <div class="col-md-12" id="form"style="margin-top:5%; background-color: rgba(255, 255, 255, 0.897)">
                    <div class="well well-sm">
                        <div class="fom-login">
                            <div class="area-form">
                                <hr>
                                    <legend class="text-center header "><b>Iniciar Sesion</b></legend>
                                <hr>
                                <form action="verify" method="GET">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Usuario </span>
                                        <input type="text" name="user" class="form-control" placeholder="Ingrese usuario">  
                                    </div>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Password </span>
                                        <input type="password" name="pass" class="form-control" placeholder="Password">  
                                    </div>
                                <button type="submit" class="btn btn-success">Ingresar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


{include file="footer.tpl"}
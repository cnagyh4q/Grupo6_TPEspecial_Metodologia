{include file="header.tpl"}
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
                                <form id="form-login" action="verify" method="POST">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Usuario </span>
                                        <input type="text" name="user" class="form-control" placeholder="Ingrese usuario">  
                                    </div>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Password </span>
                                        <input type="password" name="pass" class="form-control" placeholder="Password">  
                                    </div>
                                    {if $error}
                                        <div class="alert alert-danger" role="alert">
                                            {$error}
                                        </div>
                                    {/if}
                                <button type="submit" class="btn btn-success">Ingresar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>   
{include file="footer.tpl"}
<?php

    require_once 'RouterClass.php';


    require_once './api/SolicitudRetiroController.php';
    
    // CONSTANTES PARA RUTEO
    //define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

    $r = new Router();

 

     //Agrega una solicitud de retiro
     $r->addRoute("solicitudRetiro","POST","SolicitudRetiroController","agregarSolicitud");
   

    $r->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);

?>
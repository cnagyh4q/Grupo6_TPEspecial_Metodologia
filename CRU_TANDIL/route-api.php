<?php

    require_once 'RouterClass.php';


    require_once './api/SolicitudRetiroController.php';
    require_once 'api/MaterialesController.php';
    
    // CONSTANTES PARA RUTEO
    //define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

    $r = new Router();

 

     //Agrega una solicitud de retiro
     $r->addRoute("solicitudRetiro","POST","SolicitudRetiroController","agregarSolicitud");


      //Agrega un material de reciclaje
      $r->addRoute("material","POST","MaterialesController","agregarMaterial");
   

    $r->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);

?>
<?php
    require_once 'RouterClass.php';
    require_once 'Controller/CruController.php';
   
   
    
    // CONSTANTES PARA RUTEO
    define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

    $r = new Router();


    $r->addRoute("home", "GET", "CruContoller", "home");

    $r->addRoute("solicitudRetiro", "GET", "CruContoller", "solicitudRetiro");



    $r->setDefaultRoute("CruContoller", "home");

    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']);

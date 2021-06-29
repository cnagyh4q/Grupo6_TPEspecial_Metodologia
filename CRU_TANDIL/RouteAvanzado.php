<?php
    require_once 'RouterClass.php';
    require_once 'Controller/CruController.php';
   
   
    
    // CONSTANTES PARA RUTEO
    define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
    define("URL_homeAdmin", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/homeAdmin');

    $r = new Router();

    //endpoints
    $r->addRoute("home", "GET", "CruContoller", "home");
    $r->addRoute("homeAdmin", "GET", "CruContoller", "homeAdmin");

    $r->addRoute("solicitudRetiro", "GET", "CruContoller", "solicitudRetiro");
    $r->addRoute("nuevoMaterial", "GET", "CruContoller", "nuevoMaterial");

    $r->addRoute("listadoSolicitudes", "GET", "CruContoller", "listadoSolicitudes");
    $r->addRoute("pesajeMaterial", "GET", "CruContoller", "registroPesaje");

    $r->addRoute("iniciarSesion", "GET", "CruContoller", "iniciarSesion");
    $r->addRoute("verify", "GET", "CruContoller", "verifyUser");


    $r->setDefaultRoute("CruContoller", "home");

    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']);

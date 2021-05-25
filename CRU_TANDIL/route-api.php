<?php

require_once 'RouterClass.php';


require_once './api/SolicitudRetiroController.php';
require_once 'api/MaterialesController.php';

// CONSTANTES PARA RUTEO
//define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

$r = new Router();



//Agrega una solicitud de retiro
$r->addRoute("solicitudRetiro", "POST", "SolicitudRetiroController", "agregarSolicitud");


//Agrega un material de reciclaje
$r->addRoute("material", "POST", "MaterialesController", "agregarMaterial");


//Elimina un material por id 
$r->addRoute("material/:ID", "DELETE", "MaterialesController", "eliminarMaterial");

//Actualiza la informacion de un material dado un id
$r->addRoute("material/:ID", "PUT", "MaterialesController", "editarMaterial");


$r->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);

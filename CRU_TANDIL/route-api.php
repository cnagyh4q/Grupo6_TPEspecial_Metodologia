<?php

require_once 'RouterClass.php';


require_once './api/SolicitudRetiroController.php';
require_once 'api/MaterialesController.php';
require_once 'api/PesajeMaterialesController.php';
require_once 'api/CartonerosController.php';

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


//Registro el pesaje del material
$r->addRoute("pesajeMaterial", "POST", "PesajeMaterialesController", "registrarMaterialPesaje");

//Agrega un cartonero a la base de datos
$r->addRoute("agregarCartonero", "POST", "CartonerosController", "agregarCartonero");

$r->addRoute("cartonero/:ID", "PUT", "CartonerosController", "modificarCartonero");


$r->addRoute("cartonero/:ID", "DELETE", "CartonerosController", "eliminarCartonero");


$r->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);

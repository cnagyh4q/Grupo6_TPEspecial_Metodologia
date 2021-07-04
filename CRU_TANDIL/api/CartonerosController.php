<?php

require_once "./Model/CartonerosModel.php";
require_once "responseView.php";

class CartonerosController
{

    private $model;
    private $view;
    private $data;

    function __construct()
    {
        $this->view = new ResponseView();
        $this->model = new CartonerosModel();
        $this->data = file_get_contents("php://input");
    }

    function getData()
    {
        return json_decode($this->data);
    }

    /*Parametros: nombre, vehiculo, dni, direccion, nacimiento, telefono
    Recibe la informacion del formulario para crear un cartonero y la manda a la bd
    para que se pueda crear un cartonero en el sist, en caso de fallar, avisa el resultado
    telefono, direccion y nacimiento pueden ser nulos */
    function agregarCartonero()
    {
        $body = $this->getData();
        if (isset($body->nombre) && !empty($body->nombre) && isset($body->vehiculo) && !empty($body->vehiculo)
         && isset($body->dni) && !empty($body->dni)) { 
            $cartonero = $this->model->agregarCartonero($body->nombre, $body->vehiculo, $body->dni, $body->direccion, $body->nacimiento, $body->telefono);
            if ($cartonero > 0) {
                return $this->view->response("ok", 200);
            } else {
                return $this->view->response("error guardando la cartonero", 404);
            }
        }


        return $this->view->response("error parametros obliagtorios", 500);
    }
}
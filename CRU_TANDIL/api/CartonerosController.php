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
        if (
            isset($body->nombre) && !empty($body->nombre) && isset($body->vehiculo) && !empty($body->vehiculo)
            && isset($body->dni) && !empty($body->dni)
        ) {

            if (count($this->model->getCartoneroByDni($body->dni)) == 0) {
                $cartonero = $this->model->agregarCartonero($body->nombre, $body->vehiculo, $body->dni, $body->direccion, $body->nacimiento, $body->telefono);
                if ($cartonero > 0) {
                    return $this->view->response("ok", 200);
                } else {
                    return $this->view->response("error guardando la cartonero", 404);
                }
            } else {
                return $this->view->response("error dni existente", 404);
            }
        }


        return $this->view->response("error parametros obliagtorios", 500);
    }

    function modificarCartonero($params = null)
    {
        $body = $this->getData();
        if (
            isset($params[':ID']) && !empty($params[':ID']) && isset($body->nombre) && !empty($body->nombre) && isset($body->vehiculo) && !empty($body->vehiculo)
            && isset($body->dni) && !empty($body->dni)
        ) {

            $this->model->modificarCartonero($params[':ID'], $body->nombre, $body->vehiculo, $body->dni, $body->direccion, $body->nacimiento, $body->telefono);

            return $this->view->response("ok", 200);
        } else {
            return $this->view->response("error datos invalidos", 404);
        }
    }

    function eliminarCartonero($params = null)
    {
        if (isset($params[':ID']) && !empty($params[':ID'])) {           
                $this->model->eliminarCartonero($params[':ID']);
                return $this->view->response($params[':ID'], 200);           
        }
        return $this->view->response("error datos obligatorios", 404);
    }
}

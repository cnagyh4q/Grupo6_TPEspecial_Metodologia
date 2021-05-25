<?php

require_once "./Model/SolicitudesModel.php";
require_once "responseView.php";

class SolicitudRetiroController
{

    private $model;
    private $view;
    private $data;

    function __construct()
    {
        $this->view = new ResponseView();
        $this->model = new solicitudesModel();
        $this->data = file_get_contents("php://input");
    }

    function getData()
    {
        return json_decode($this->data);
    }


    function agregarSolicitud()
    {
        $body = $this->getData();
        if (
            isset($body->nombre) && !empty($body->nombre) && isset($body->direccion) && !empty($body->direccion)
            && isset($body->telefono) && !empty($body->telefono) && isset($body->franja_horaria) && !empty($body->franja_horaria) && isset($body->volumen_materiales) && !empty($body->volumen_materiales)
        ) {
            $solicitud = $this->model->agregarSolicitud($body->nombre, $body->direccion, $body->telefono, $body->franja_horaria, $body->volumen_materiales);
            if ($solicitud > 0) {
                return $this->view->response("ok", 200);
            } else {
                return $this->view->response("error guardando la solicitud", 404);
            }
        }


        return $this->view->response("error parametros obliagtorios", 404);
    }
}

<?php

require_once "./Model/PesajeMaterialesModel.php";
require_once "responseView.php";

class PesajeMaterialesController
{

    private $model;
    private $view;
    private $data;

    function __construct()
    {
        $this->view = new ResponseView();
        $this->model = new PesajeMaterialesModel();
        $this->data = file_get_contents("php://input");
    }

    function getData()
    {
        return json_decode($this->data);
    }


    /**
     * Datos necesarios
     * id
     * peso
     * material
     * rol
     */
    
    function registrarMaterialPesaje()
    {
        $body = $this->getData();
        var_dump($body);
        if (
            isset($body->id) && isset($body->peso) && !empty($body->peso)
            && isset($body->material) && !empty($body->material) && isset($body->rol) && !empty($body->rol)
            )
         {           
            $registro = $this->model->agregarPesaje($body->id,$body->peso ,$body->meterial,$body->rol);
            if ($registro > 0) {
                return $this->view->response("ok", 200);
            } else {
                return $this->view->response("error registrando el pesaje", 404);
            }
        }


        return $this->view->response("error parametros obliagtorios", 404);
    }

}

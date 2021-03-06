<?php

require_once "./Model/MaterialModel.php";
require_once "responseView.php";

class MaterialesController
{

    private $model;
    private $view;
    private $data;

    function __construct()
    {
        $this->view = new ResponseView();
        $this->model = new MaterialModel();
        $this->data = file_get_contents("php://input");
    }

    function getData()
    {
        return json_decode($this->data);
    }


    function agregarMaterial()
    {
        $body = $this->getData();
        if (
            isset($body->material) && !empty($body->material) && isset($body->tratamiento) && !empty($body->tratamiento)
            )
         {

           
            $solicitud = $this->model->agregarMaterial($body->material, $body->tratamiento);
            if ($solicitud > 0) {
                return $this->view->response("ok", 200);
            } else {
                return $this->view->response("error guardando el material", 404);
            }
        }


        return $this->view->response("error parametros obliagtorios", 404);
    }


    function eliminarMaterial($params = null)
    {
        if (isset($params[':ID']) && !empty($params[':ID'])) {           
                $this->model->eliminarMaterial($params[':ID']);
                return $this->view->response($params[':ID'], 200);           
        }
        return $this->view->response("error datos obligatorios", 404);
    }


    function editarMaterial($params = null)
    {
        $body = $this->getData();
        
        if (isset($params[':ID']) && !empty($params[':ID'])) {  
            if (isset($body->material) && !empty($body->material) && isset($body->tratamiento) 
                && !empty($body->tratamiento)){
                    $this->model->editarMaterial($params[':ID'], $body->material, $body->tratamiento);
                    return $this->view->response($params[':ID'], 200);           
            }       
        }
        return $this->view->response("error datos obligatorios", 404);
    }
}

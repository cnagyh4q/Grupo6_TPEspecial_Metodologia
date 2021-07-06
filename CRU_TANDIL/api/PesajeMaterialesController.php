<?php

require_once "./Model/PesajeMaterialesModel.php";
require_once "./Model/CartonerosModel.php";
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
        $this->modelCartonero = new CartonerosModel();
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
        
        if (
            isset($body->id) && isset($body->peso) && !empty($body->peso)
            && isset($body->material) && !empty($body->material) && isset($body->rol) && !empty($body->rol)
            )
         {   
            $body->rol = $body->rol == 1 ? "Cartonero": "Vecino buena onda"; 

            
            $body->id = empty($body->id) ? null : $body->id;

            if ($body->id != null && count($this->modelCartonero->getCartoneroByDni($body->id)) == 0){
                  return $this->view->response("No existe cartonero", 404);
            } 
                        
            $registro = $this->model->agregarPesaje($body->id,$body->peso ,$body->material,$body->rol);

            if ($registro > 0) {
                return $this->view->response("Se guardo el pesaje correctamente", 200);
            } else {
                return $this->view->response("Error registrando el pesaje", 404);
            }
        }


        return $this->view->response("error parametros obliagtorios", 500);
    }

}

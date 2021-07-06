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
        ) {
            $body->rol = $body->rol == 1 ? "Cartonero" : "Vecino buena onda";


            $body->id = empty($body->id) ? null : $body->id;

            if ($body->id != null) {
                $cartonero = $this->modelCartonero->getCartoneroByDni($body->id);
                if ($cartonero > 0) {
                    $registro = $this->model->agregarPesaje($cartonero->nrcartonero, $body->peso, $body->material, $body->rol);
                } else {
                    return $this->view->response("No existe cartonero", 404);
                }
            } else {
                $registro = $this->model->agregarPesaje($body->id, $body->peso, $body->material, $body->rol);
            }
            if ($registro > 0) {
                return $this->view->response("ok", 200);
            } else {
                return $this->view->response("error registrando el pesaje", 404);
            }
        }


        return $this->view->response("error parametros obliagtorios", 500);
    }
}

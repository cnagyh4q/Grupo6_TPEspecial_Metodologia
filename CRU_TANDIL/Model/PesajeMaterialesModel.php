<?php

class PesajeMaterialesModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=Cooperativa;charset=utf8','root','');
    }

    /*Parametros: id, peso, material, rol
    Carga la informacion del pesaje que recibe y la guarda en la base de datos */
    function agregarPesaje($id, $peso, $material, $rol){
        
        $sentencia=$this->db->prepare('INSERT INTO pesaje_materiales (id, peso, material, rol) VALUES (?,?,?,?)');
        $sentencia->execute([$id, $peso, $material, $rol]);
        
        return $this->db->lastInsertId();
    }


    function getmatCartoneros(){
        $sentencia = $this->db->prepare("SELECT * FROM pesaje_materiales WHERE rol='Cartonero' ORDER BY rol ASC " );
        $sentencia->execute();
        $materialesCartoneros = $sentencia->fetchAll(PDO::FETCH_ASSOC);

        return $materialesCartoneros;
    }

}
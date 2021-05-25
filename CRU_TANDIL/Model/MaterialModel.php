<?php

class MaterialModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=Cooperativa;charset=utf8','root','');
    }

    /*Parametros: material, tratamiento
    Carga la informacion que recibe por paramtros y la guarda en la base de datos */
    function agregarMaterial($material, $tratamiento){
        
        $sentencia=$this->db->prepare('INSERT INTO material (tipo_material, tratamiento) VALUES (?,?)');
        $sentencia->execute([$material, $tratamiento]);
        
        return $this->db->lastInsertId();
    }



    /*Parametros: id 
    Elimina el metrial dependiendo el ID del mismo*/
    function eliminarMaterial($idmaterial){
        
        $sentencia=$this->db->prepare('DELETE FROM material where idmaterial = ?');
        $sentencia->execute([$idmaterial]);
        
    }

}
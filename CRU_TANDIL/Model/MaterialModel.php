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

    function getMateriales(){
        $sentencia = $this->db->prepare("SELECT * FROM material ORDER BY nmaterial ASC");
        $sentencia->execute();
        $materiales = $sentencia->fetchAll(PDO::FETCH_ASSOC);

        return $materiales;
    }

}
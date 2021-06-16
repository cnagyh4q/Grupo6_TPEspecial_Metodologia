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
    Elimina el material dependiendo el ID del mismo*/
    function eliminarMaterial($idmaterial){
        $sentencia=$this->db->prepare("DELETE FROM material where nmaterial = ?");
        $sentencia->execute([$idmaterial]);
    }

    /*Parametros: nmaterial (id), material, tratamiento
    Dado el numero de id de un material, actualiza los datos del mismo */
    function editarMaterial($id, $material, $tratamiento){
        $sentencia = $this->db->prepare("UPDATE material SET tipo_material = ?, tratamiento = ? WHERE nmaterial = ?");
        $sentencia->execute(array($material, $tratamiento, $id));
    }

    /*Trae todos los Materiales que hay guardados en la base de datos */
    function getMateriales(){
        $sentencia = $this->db->prepare("SELECT * FROM material ORDER BY nmaterial ASC");
        $sentencia->execute();
        $materiales = $sentencia->fetchAll(PDO::FETCH_ASSOC);

        return $materiales;
    }

}
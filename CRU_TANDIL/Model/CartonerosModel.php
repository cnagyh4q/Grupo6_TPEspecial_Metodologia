<?php

class CartonerosModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=Cooperativa;charset=utf8','root','');
    }

    /*Parametros: nombre, vehiculo, dni, direccion, nacimiento, telefono
    Carga la informacion del xartonero que recibe y la guarda en la base de datos
    telefono, direccion y nacimiento pueden ser nulos */
    function agregarCartonero($nombre, $vehiculo, $dni, $direccion, $nacimiento, $telefono){
        
        $sentencia=$this->db->prepare('INSERT INTO cartoneros (nombre, vehiculo, dni, direccion, nacimiento, telefono) VALUES (?,?,?,?,?,?)');
        $sentencia->execute([$nombre, $vehiculo, $dni, $direccion, $nacimiento, $telefono]);
        
        return $this->db->lastInsertId();
    }


    /**
     * obtiene el listado de los cartoneros
     */
    function getCartoneros(){
        
        $sentencia=$this->db->prepare('select * from cartoneros ');
        $sentencia->execute(); 
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }


    /**
     * obtiene el cartonero por dni
     */
    function getCartoneroByDni($dni){
        
        $sentencia=$this->db->prepare('select * from cartoneros where dni=?');
        $sentencia->execute([$dni]); 
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }


     /**
     * obtiene el cartonero por ncartonero
     */
    function getCartoneroByNcartonero($ncartonero){
        
        $sentencia=$this->db->prepare('select * from cartoneros where ncartonero=?');
        $sentencia->execute([$ncartonero]); 
        return $sentencia->fetch(PDO::FETCH_ASSOC);
    }


    function modificarCartonero($ncartonero , $nombre, $vehiculo, $dni, $direccion, $nacimiento, $telefono){
        
        $sentencia=$this->db->prepare('UPDATE cartoneros set nombre=?, vehiculo=?, dni=?, direccion=?, nacimiento=?, telefono=? WHERE ncartonero = ?');
        $sentencia->execute([$nombre, $vehiculo, $dni, $direccion, $nacimiento, $telefono , $ncartonero]);
        

    }


     function eliminarCartonero($idcartonero){
        $sentencia=$this->db->prepare("DELETE FROM cartoneros where ncartonero = ?");
        $sentencia->execute([$idcartonero]);
    }



}
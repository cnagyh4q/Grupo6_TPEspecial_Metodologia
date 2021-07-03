<?php

class CartonerosModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=Cooperativa;charset=utf8','root','');
    }

    /*Parametros: nombre, vehiculo, dni, direccion, nacimiento
    Carga la informacion del xartonero que recibe y la guarda en la base de datos
    direccion y nacimiento pueden ser nulos */
    function agregarCartonero($nombre, $vehiculo, $dni, $direccion, $nacimiento){
        
        $sentencia=$this->db->prepare('INSERT INTO cartoneros (nombre, vehiculo, dni, direccion, nacimiento) VALUES (?,?,?,?,?)');
        $sentencia->execute([$nombre, $vehiculo, $dni, $direccion, $nacimiento]);
        
        return $this->db->lastInsertId();
    }

}
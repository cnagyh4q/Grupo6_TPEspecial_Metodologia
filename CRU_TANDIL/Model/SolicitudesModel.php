<?php

class solicitudesModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=Cooperativa;charset=utf8','root','');
    }

    /*Parametros: nombre->nombre_apellido, direccion, telefono, franja horaria, y volumen de materiales
    Carga la informacion que recibe por paramtros y la guarda en la base de datos */
    function agregarSolicitud($nombre, $direccion, $telefono, $franja_horaria, $volumen_materiales){
        
        $sentencia=$this->db->prepare('INSERT INTO solicitud_pedido (nombre_apellido, direccion, telefono, franja_horaria, volumen_materiales) VALUES (?,?,?,?,?)');
        $sentencia->execute([$nombre, $direccion, $telefono, $franja_horaria, $volumen_materiales]);
        
        return $this->db->lastInsertId();
    }

    /*Trae todas las solicitudes que hay guardados en la base de datos */
    function getSolicitudes(){
        $sentencia = $this->db->prepare("SELECT * FROM solicitud_pedido");
        $sentencia->execute();
        $solicitudes = $sentencia->fetchAll(PDO::FETCH_ASSOC);

        return $solicitudes;
    }

}

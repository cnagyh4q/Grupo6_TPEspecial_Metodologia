<?php

require_once "./libs/smarty/Smarty.class.php";

class SolicitudRetiroView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showSolicitudRetiro(){
      $this->smarty->display('templates/solicitudRetiro.tpl');

   }
   function showListadoSolicitudes($solicitudes){
      $this->smarty->assign('solicitudes',$solicitudes);
      $this->smarty->display('templates/listadoSolicitudes.tpl');
   }
}


?>
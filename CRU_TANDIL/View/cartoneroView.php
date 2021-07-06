<?php

require_once "./libs/smarty/Smarty.class.php";

class CartoneroView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showForm(){
      $this->smarty->display('templates/cartoneroForm.tpl');
   }


   function showListadoCartoneros($cartoneros){
      $this->smarty->assign('cartoneros',$cartoneros);
      $this->smarty->display('templates/listadoCartonero.tpl');
   }
   
}


?>
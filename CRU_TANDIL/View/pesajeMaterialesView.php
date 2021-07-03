<?php

require_once "./libs/smarty/Smarty.class.php";

class PesajeMaterialesView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showListadopesajesCartoneros($matCartoneros){
      $this->smarty->assign('matCartoneros',$matCartoneros);
      $this->smarty->display('templates/materialesCartoneros.tpl');

   }

}


?>
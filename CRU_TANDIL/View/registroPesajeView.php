<?php

require_once "./libs/smarty/Smarty.class.php";

class RegistroPesajeView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showRegistroPesaje(){
     $this->smarty->display('templates/pesajeForm.tpl');

   }

}


?>
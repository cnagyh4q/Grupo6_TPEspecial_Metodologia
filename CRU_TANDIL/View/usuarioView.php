<?php

require_once "./libs/smarty/Smarty.class.php";

class UsuarioView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showUsuario(){
      $this->smarty->display('templates/login.tpl');

   }
   
}


?>
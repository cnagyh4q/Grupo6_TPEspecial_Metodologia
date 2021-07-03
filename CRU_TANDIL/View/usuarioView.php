<?php

require_once "./libs/smarty/Smarty.class.php";

class UsuarioView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showUsuario($error = null){
      $this->smarty->assign('error', $error);
      $this->smarty->display('templates/login.tpl');

   }
   
}


?>
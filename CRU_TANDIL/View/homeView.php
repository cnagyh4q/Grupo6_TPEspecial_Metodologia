<?php

require_once "./libs/smarty/Smarty.class.php";

class HomeView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showHome(){
      $this->smarty->display('templates/home.tpl');

   }

}


?>
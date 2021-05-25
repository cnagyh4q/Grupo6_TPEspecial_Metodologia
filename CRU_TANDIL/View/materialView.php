<?php

require_once "./libs/smarty/Smarty.class.php";

class MaterialView{


   private $smarty;
        
   function __construct(){
       
       $this->smarty = new Smarty();
       $this->smarty->assign('url',BASE_URL);
   }

   function showMaterialForm(){
      $this->smarty->display('templates/materialForm.tpl');

   }

}


?>
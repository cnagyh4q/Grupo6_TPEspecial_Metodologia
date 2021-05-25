<?php   

    require_once "./View/homeView.php";
    require_once "./View/solicitudRetiroView.php";
    require_once "./View/materialView.php";
   
    class CruContoller{

        private $homeView;
        private $solicitudRetiroView;
        
        function __construct (){
           
            $this->homeView = new HomeView();
            $this->solicitudRetiroView = new SolicitudRetiroView();
            $this->materialView = new MaterialView();
           
           
        }

    

        function home(){
           $this->homeView->showHome();
        }


        function solicitudRetiro(){
       
            $this->solicitudRetiroView->showSolicitudRetiro();

        }

        function nuevoMaterial(){
            $this->materialView->showMaterialForm();
        }

    }
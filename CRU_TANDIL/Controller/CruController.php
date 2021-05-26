<?php   

    require_once "./View/homeView.php";
    require_once "./View/solicitudRetiroView.php";
    require_once "./View/materialView.php";
    require_once "./Model/MaterialModel.php";
   
    class CruContoller{

        private $homeView;
        private $solicitudRetiroView;
        
        function __construct (){
           
            $this->homeView = new HomeView();
            $this->solicitudRetiroView = new SolicitudRetiroView();
            $this->materialView = new MaterialView();
            $this->materialModel = new MaterialModel();           
           
        }

    

        function home(){
            $materiales = $this->materialModel->getMateriales();
            $this->homeView->showHome($materiales);
        }

        function homeAdmin(){
            $materiales = $this->materialModel->getMateriales();
            $this->homeView->showHomeAdmin($materiales);
        }


        function solicitudRetiro(){
            $this->solicitudRetiroView->showSolicitudRetiro();

        }

        function nuevoMaterial(){
            $this->materialView->showMaterialForm();
        }

    }
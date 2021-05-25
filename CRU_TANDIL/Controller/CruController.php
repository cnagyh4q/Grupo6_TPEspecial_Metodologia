<?php   

    require_once "./View/homeView.php";
    require_once "./View/solicitudRetiroView.php";
   
    class CruContoller{

        private $homeView;
        private $solicitudRetiroView;
        
        function __construct (){
           
            $this->homeView = new HomeView();
            $this->solicitudRetiroView = new SolicitudRetiroView();
           
           
           
        }

    

        function home(){
           $this->homeView->showHome();
        }


        function solicitudRetiro(){
       
            $this->solicitudRetiroView->showSolicitudRetiro();

              
                
       
            
        }

    }
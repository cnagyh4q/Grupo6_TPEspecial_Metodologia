<?php   

    require_once "./View/homeView.php";
    require_once "./View/solicitudRetiroView.php";
    require_once "./View/materialView.php";
    require_once "./Model/MaterialModel.php";
    require_once "./Model/SolicitudesModel.php";
    require_once "./Model/UsuariosModel.php";
    require_once "./View/usuarioView.php";
    require_once "./Model/PesajeMaterialesModel.php";
    require_once "./View/pesajeMaterialesView.php";
    require_once "./Model/CartonerosModel.php";
    require_once "./View/cartoneroView.php";

   
    class CruContoller{

        private $homeView;
        private $solicitudRetiroView;
        
        function __construct (){
           
            $this->homeView = new HomeView();
            $this->solicitudRetiroView = new SolicitudRetiroView();
            $this->solicitudesModel = new solicitudesModel();
            $this->usuariosModel = new usuariosModel();
            $this->cartonerosModel = new cartonerosModel();
            $this->materialView = new MaterialView();
            $this->materialModel = new MaterialModel();          
            $this->usuarioView = new UsuarioView();
            $this->pesajeMaterialesModel = new PesajeMaterialesModel();  
            $this->pesajeMaterialesView = new PesajeMaterialesView ();
            $this->cartoneroView = new CartoneroView();
        }

    

        function home(){
            $materiales = $this->materialModel->getMateriales();
            $this->homeView->showHome($materiales);
        }

        function homeAdmin(){
            $this->checkLogIn();
            $materiales = $this->materialModel->getMateriales();
            $this->homeView->showHomeAdmin($materiales);
        }


        function solicitudRetiro(){
            $this->solicitudRetiroView->showSolicitudRetiro();

        }

        function nuevoMaterial(){
            $this->checkLogIn();
            $this->materialView->showMaterialForm();
        }

        function listadoSolicitudes(){
            $this->checkLogIn();
            $solicitudes = $this->solicitudesModel->getSolicitudes();
            $this->solicitudRetiroView->showListadoSolicitudes($solicitudes);

        }
        
        function listMaterialesCartoneros(){
            $this->checkLogIn();
            $matCartoneros =  $this->pesajeMaterialesModel->getmatCartoneros();
            $this->pesajeMaterialesView->showListadopesajesCartoneros($matCartoneros);
        }

        function registroPesaje(){
            $materiales = $this->materialModel->getMateriales();
            $this->pesajeMaterialesView->showRegistroPesaje($materiales);
        }

        function nuevoCartonero(){
            $this->checkLogIn();
            $this->cartoneroView->showForm();
        }

        public function iniciarSesion() {
            $this->usuarioView->showUsuario();
        }

        //Controla que el usuario exista y que la contrase??a sea correcta
        public function verifyUser() {

            $username = $_POST['user']; //'secretaria01';
            $password = $_POST['pass']; //'password';

            $user = $this->usuariosModel->getPassword($username);
            
            if (!empty($user)) {
                if(password_verify($password, $user->contrase??a)){

                    session_start();
    
                    $_SESSION['ID_USER'] = $user->nusuario;
                    $_SESSION['USERNAME'] = $user->usuario;
                    
                   header("Location: " . URL_homeAdmin);
                  die();
                } else {
                    $this->usuarioView->showUsuario("La contrase??a es incorrecta");
                }
            } else {
                $this->usuarioView->showUsuario("El usuario no existe");
            }
        }


        function listadoCartoneros(){
            $this->checkLogIn();
            $cartoneros = $this->cartonerosModel->getCartoneros();
            $this->cartoneroView->showListadoCartoneros($cartoneros);

        }
        

        private function checkLogIn(){
            session_start();
            
            if(!isset($_SESSION['ID_USER']) ){
                header("Location: " . URL_login);
                die();
            }
        }

        public function logout() {
            session_start();
            // Unset all of the session variables.
            unset($_SESSION['USERNAME']);
            unset($_SESSION['ID_USER']);
            // Finally, destroy the session.    
            session_destroy();  
            
            header('Location: ' . URL_login);
            $this->view->showUsuario("se cerro la sesion");
        }

    }
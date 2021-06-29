<?php   

    require_once "./View/homeView.php";
    require_once "./View/solicitudRetiroView.php";
    require_once "./View/materialView.php";
    require_once "./View/registroPesajeView.php";
    require_once "./Model/MaterialModel.php";
    require_once "./Model/SolicitudesModel.php";
    require_once "./Model/UsuariosModel.php";
   
    class CruContoller{

        private $homeView;
        private $solicitudRetiroView;
        
        function __construct (){
           
            $this->homeView = new HomeView();
            $this->solicitudRetiroView = new SolicitudRetiroView();
            $this->solicitudesModel = new solicitudesModel();
            $this->usuariosModel = new usuariosModel();
            $this->materialView = new MaterialView();
            $this->materialModel = new MaterialModel();  
            $this->registroPesajeView = new RegistroPesajeView();         
            $this->usuariosView = null; //ACA TIENE QUE IR LA VISTA DE USUARIOS
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

        function listadoSolicitudes(){
            $solicitudes = $this->solicitudesModel->getSolicitudes();
            $this->solicitudRetiroView->showListadoSolicitudes($solicitudes);

        }
        
        function registroPesaje(){
            $this->registroPesajeView->showRegistroPesaje();
        }

        public function iniciarSesion() {
            $this->usuariosView->iniciarSesion();
        }

        //Controla que el usuario exista y que la contraseña sea correcta
        public function verifyUser() {

            $username = $_POST['user']; //'secretaria01';
            $password = $_POST['pass']; //'password';
    
            $user = $this->usuariosModel->getPassword($username);
            
            if (!empty($user)) {
                if(password_verify($password, $user->contraseña)){

                    session_start();
    
                    $_SESSION['ID_USER'] = $user->nusuario;
                    $_SESSION['USERNAME'] = $user->usuario;
                    
                   header('Location: ' . URL_homeAdmin);
                } else {
                    $this->usuariosView->iniciarSesion("La contraseña es incorrecta");
                }
            } else {
                $this->usuariosView->iniciarSesion("El usuario no existe");
            }
        }

        public function logout() {
            session_start();
            // Unset all of the session variables.
            unset($_SESSION['USERNAME']);
            // Finally, destroy the session.    
            session_destroy();  
            
            header('Location: ' . URL_login);
            $this->view->showLogin("se cerro la sesion");

        }

    }
<?php
    session_start();

    function homeSession(){
        if(!ISSET($_SESSION['id']) ){
            if(!ISSET($_SESSION['id']) && strpos($_SERVER['REQUEST_URI'], 'index.php') == false){
                header ("location: ./index.php");
            }
        }
      
    }

    function loginSession(){
        if(ISSET($_SESSION['id'])){
            header ("location: home.php");
        }
    }

    function joinSession(){
        if(ISSET($_SESSION['id'])){
            header ("location: home.php");
        }
    }
        

    function indexSession(){
        if(ISSET($_SESSION['id'])){
            header ("location: home.php");
        }
    }


    function artDetailsSession(){
        if(!ISSET($_SESSION['id'])){
            header ("location: login.php");
        }
    }

        

        


?>
<?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $dbName = "abyss";

    $conn = mysqli_connect($server, $username,  $password,  $dbName);

    $error = mysqli_connect_errno();
    
    if(mysqli_connect_errno()){

        exit();
    }

?>

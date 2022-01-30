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

    session_start();
    $id = (int) $_SESSION['id'];

    $file = $_FILES['coverProfileImg']['name'];
    $path = "../Assets/img/coverProfile/".basename($file);
    $output = "";

    $query = "UPDATE abyss_user SET coverProfile = '$file' WHERE id = $id";
    $cmd = mysqli_query($conn,$query); 

    if($cmd){
        move_uploaded_file($_FILES['coverProfileImg']['tmp_name'], $path);
        $output = "Submitted Successfully";
    }else{
        $output = $cmd;
    }

    $response = array(
        'output' => $output
    );

    echo json_encode($response);
?>
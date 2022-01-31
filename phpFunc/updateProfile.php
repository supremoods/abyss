<?php
    include('dbConnect.php');

    session_start();
    $id = (int) $_SESSION['id'];

    $userName = $_POST['userName'];
    $checkArtist = $_POST['checkArtist'];
    $birthday = $_POST['birthday'];
    $level = $_POST['level'];
    $Location = $_POST['Location'];
    $specialty = $_POST['specialty'];
    $pronouns = $_POST['pronouns'];

    $output = "";

    $query = "UPDATE abyss_user SET username = '$userName', checkArtist = '$checkArtist', birthDay = '$birthday', Level = '$level', Location = '$Location', Specialty = '$specialty', Pronouns = '$pronouns'  WHERE id = $id";
    $cmd = mysqli_query($conn,$query); 



    if($cmd){
       
        $output = "Submitted Successfully";
    }else{
        $output = $userName ;
    }

    $response = array(
        'output' => $output
    );

    echo json_encode($response);
?>


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

    $file = $_FILES['abyssal_art_image']['name'];
    $path = "../Assets/img/arts/".basename($file);
    $privacy =  $_POST['privacy'];
    $title =  $_POST['abyssals-title'];
    $desc =  $_POST['abyssals-desc'];
    $output = "";


    $query = "INSERT INTO art_abyssals(id, art_id, abyssal_art, title, description, privacy, count_comment, count_fav)
    VALUES ($id,null,'$file','$title','$desc','$privacy',0,0)";

    $cmd = mysqli_query($conn,$query); 

    if($cmd){
        move_uploaded_file($_FILES['abyssal_art_image']['tmp_name'], $path);
        $output = "Submitted Successfully";
     

    }else{
        $output = "failed";
    }

    $response = array(
        'output' => $output
    );

    echo json_encode($response);
?>
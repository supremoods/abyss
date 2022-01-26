<?php
    function clean($str)
    {
        $str = @trim($str);
        if(get_magic_quotes_gpc()) {$str = stripslashes($str);  }
        return mysql_real_escape_string($str);
    }
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

    $file = $_FILES['post_art_image']['name'];
    $path = "../Assets/img/post/".basename($file);
    $privacy =  $_POST['privacy'];
    $title =  $_POST['post-title'];
    $desc = htmlspecialchars($_POST['post-desc']);
    $output = "";



    $query = "INSERT INTO abyss_post(id, post_id, cover_image, title, post_description, count_fav, count_comment, privacy)
    VALUES ($id,null,'$file','$title','$desc',0,0,'$privacy')";

    $cmd = mysqli_query($conn,$query); 

    if($cmd){
        move_uploaded_file($_FILES['post_art_image']['tmp_name'], $path);
        $output = "Submitted Successfully";
     

    }else{
        $output = "failed";
    }

    $response = array(
        'output' => $output
    );

    echo json_encode($response);
?>
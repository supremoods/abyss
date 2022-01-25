<?php
    include('phpFunc/dbConnect.php');
    echo "failed";
    exit();
    session_start();

    $id = (int) $_SESSION['id'];
    $file = $_FILES['abyssal_art_image']['name'];
    $privacy =  $_POST['privacy'];
    $title =  $_POST['abyssals-title'];
    $desc =  $_POST['abyssals-desc'];
    $output = "";

    $query = "INSERT INTO art_abyssals(id, art_id, abyssal_art, title, description, privacy, count_comment, count_fav) 
    VALUES($id, null, '$file', '$title', '$desc', '$privacy', 0, 0)";

    $cmd = mysqli_query($conn,$query); 

    if($cmd){
        move_uploaded_file($_FILES['image']['tmp_name'], "$file");
        $output = "done";

        echo "success";
        exit();
    }else{
        $output = "failed";
        echo "failed";
        exit();
    }

    $response = array(
        'output' => $output
    );

    echo json_encode($response);
?>
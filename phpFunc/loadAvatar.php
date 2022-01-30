<?php
    include('dbConnect.php');
    session_start(); 
    $id = (int) $_SESSION['id'];

    $query = "SELECT * FROM abyss_user WHERE id = $id";

    $cmd = mysqli_query($conn,$query); 
    $fetch = mysqli_fetch_array($cmd);

    
    echo '
        <img src="./Assets/img/profile/'.$fetch['profileImage'].'" alt="">
    ';


?>


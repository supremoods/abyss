<?php
    include('dbConnect.php');
    session_start();
    $art_id = $_GET['abyssalsId'];
    $comment = $_POST['userComment'];
    $id = (int) $_SESSION['id'];
    $query = "INSERT INTO abyssal_comment(comment_ID,id,art_id,comment) VALUES(null, $id, $art_id, '$comment')";
    
    $cmd = mysqli_query($conn,$query); 
    $fetch = mysqli_fetch_array($cmd);


    




?>
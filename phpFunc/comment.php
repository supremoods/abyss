<?php
    include('dbConnect.php');
    session_start();
    $artId = $_REQUEST['artID'];
    $comment = mysqli_real_escape_string($conn, $_REQUEST['comment']);

   
    $id = (int) $_SESSION['id'];
    $query = "INSERT INTO abyssal_comment(comment_ID,id,art_id,comment) VALUES(null, $id, $artId, '$comment')"; 
    $cmd = mysqli_query($conn,$query); 

    $query = "SELECT * FROM abyssal_comment WHERE art_id = $artId"; 
    $cmd = mysqli_query($conn,$query); 
    $count = mysqli_num_rows($cmd);

    $insertCount = "UPDATE art_abyssals SET count_comment = $count WHERE art_id = $artId";
    $cmd = mysqli_query($conn,$insertCount); 
    
    include ('loadComment.php');
?>
<?php
    include('dbConnect.php');
    session_start();

    $postID = $_REQUEST['postID'];
    $comment = $_REQUEST['comment'];


    $id = (int) $_SESSION['id'];
    $query = "INSERT INTO abyss_post_comment(commentId,id,post_id,comment) VALUES(null, $id, $postID, '$comment')"; 
    $cmd = mysqli_query($conn,$query); 

    $query = "SELECT * FROM abyss_post_comment WHERE post_id = $postID"; 
    $cmd = mysqli_query($conn,$query); 
    $count = mysqli_num_rows($cmd);

    $insertCount = "UPDATE abyss_post SET count_comment = $count WHERE post_id = $postID";
    $cmd = mysqli_query($conn,$insertCount); 
    
    include ('loadCommentPost.php');
    
?>
<?php
    include('dbConnect.php');
    session_start();
    $postID = $_REQUEST['postID'];

    $query = "SELECT * FROM abyss_post_comment WHERE post_id = $postID"; 
    $cmd = mysqli_query($conn,$query); 
    $count = mysqli_num_rows($cmd);

    $insertCount = "UPDATE abyss_post SET count_comment = $count WHERE post_id = $postID";
    $cmd = mysqli_query($conn,$insertCount); 
    
    echo '
        <span class="material-icons">chat_bubble</span>
        <p>
             '.$count.'
        </p>
    ';
?>


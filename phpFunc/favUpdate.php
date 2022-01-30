<?php
    include('dbConnect.php');
    session_start();
    $id = (int) $_SESSION['id'];
    $artId = $_REQUEST['id'];
    $query = "SELECT * FROM abyssal_favorite WHERE id= $id AND art_id = $artId";
    $cmd = mysqli_query($conn,$query); 
    $fetch = mysqli_fetch_array($cmd);
    $count = mysqli_num_rows($cmd);

    if($count >= 1){
        $query = "SELECT * FROM art_abyssals WHERE art_id = $artId";
        $cmd = mysqli_query($conn,$query); 
        $fetch = mysqli_fetch_array($cmd);
        $count_fav = (int) $fetch['count_fav'] - 1;
        $query = "UPDATE art_abyssals SET count_fav = $count_fav WHERE art_id = $artId;";

        $query .= "DELETE FROM abyssal_favorite WHERE id= $id AND art_id = $artId";
        $cmd = mysqli_multi_query($conn,$query); 
    }else{
        $query = "SELECT * FROM art_abyssals WHERE art_id = $artId";
        $cmd = mysqli_query($conn,$query); 
        $fetch = mysqli_fetch_array($cmd);
        $count_fav = (int) $fetch['count_fav'] + 1;
        
        $query = "UPDATE art_abyssals SET count_fav = $count_fav WHERE art_id = $artId;";

        $query .= "INSERT INTO abyssal_favorite(id, art_id) VALUES ($id, $artId);";
        $cmd = mysqli_multi_query($conn,$query); 
    }

    
    

    include('loadAbyssals.php');




?>
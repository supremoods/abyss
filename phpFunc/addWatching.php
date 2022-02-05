<?php
    include('dbconnect.php');
    session_start();
    $watchID = $_REQUEST['watchID'];
    $userId =(int) $_SESSION['id'];

    $query = "SELECT * FROM abyss_watcher WHERE userID= $userId AND watchID= $watchID";
    $cmd = mysqli_query($conn, $query);
    
    if(mysqli_num_rows($cmd) > 0){
        $query = "DELETE FROM abyss_watcher WHERE userID= $userId AND watchID= $watchID";
        $cmd = mysqli_query($conn, $query);

        echo'
        <button class="watchBtn"  data-id="'.$watchID.'" onclick="addWatching(this.dataset.id)" ><i class="bx bx-bookmark-plus" ></i> Watch</button>
        ';
    }else{
        $query = "INSERT INTO abyss_watcher(userID, watchID) VALUES($userId, $watchID)";
        $cmd = mysqli_query($conn, $query);

        echo'
        <button class="watchBtn"  data-id="'.$watchID.'" onclick="addWatching(this.dataset.id)" >Watching</button>
        ';

    }





    


?>
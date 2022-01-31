<?php
    include('dbConnect.php');
    
    session_start();
    $id = (int) $_SESSION['id'];
    $query = "SELECT * FROM art_abyssals WHERE id = $id";

    $cmd = mysqli_query($conn,$query); 
  

    if(mysqli_num_rows($cmd) > 0){
        while($fetch = mysqli_fetch_array($cmd)){
           
            $userName = $fetch['id'];  
            $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
            $cmd2 = mysqli_query($conn,$query2); 
            $fetch2 = mysqli_fetch_array($cmd2);

            echo '
            <li class="feature-gallery-item">
                <img src="assets/img/arts/'.$fetch['abyssal_art'].'.jpg" alt="" srcset="">
            </li>              
        ';
        }
    }

    


?>


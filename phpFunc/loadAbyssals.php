<?php
    include('dbConnect.php');

    $query = "SELECT * FROM art_abyssals";

    $cmd = mysqli_query($conn,$query); 
    

    if(mysqli_num_rows($cmd) > 0){
        while($fetch = mysqli_fetch_array($cmd)){
            $userName = $fetch['id'];  
            $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
            $cmd2 = mysqli_query($conn,$query2); 
            $fetch2 = mysqli_fetch_array($cmd2);

            echo '
                <li data-id="'.$fetch['art_id'].'" class="gallery-item" onclick="artdetails(this.dataset.id)">
                <img src="./Assets/img/arts/'.$fetch['abyssal_art'].'" alt="" srcset="">
                <div class="text">
                    <div>
                        <h3>'.$fetch['title'].'</h3>
                        <p class="highlight">'.$fetch['count_comment'].'<span class="material-icons">chat_bubble_outline</span></p>
                    </div>
                    <div>
                        <p>by '.$fetch2['username'].'</p>
                        <p class="highlight" >'.$fetch['count_fav'].'<span class="material-icons">star_outline</span></p>
                    </div>
                </div>
                </li>                 
        ';
        }
    }

    


?>


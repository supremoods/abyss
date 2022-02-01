<?php
    include('dbConnect.php');
    
    session_start();
    $id = (int) $_SESSION['id'];
    $query = "SELECT * FROM art_abyssals WHERE id = $id AND featured_gallery = 'feat'";
    $cmd = mysqli_query($conn,$query); 
    
    if(mysqli_num_rows($cmd) == 0){
        echo'
        <div class="submit-feat">
            <h1>Submit your first Abyssal!</h1>
            <p>Get your art out there for people see.</p>
            <a href="#">Submit</a>
        </div>
        ';
    }

    if(mysqli_num_rows($cmd) > 0){
        while($fetch = mysqli_fetch_array($cmd)){
           
            $userName = $fetch['id'];  
            $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
            $cmd2 = mysqli_query($conn,$query2); 
            $fetch2 = mysqli_fetch_array($cmd2);

            echo '
            <li class="feature-gallery-item">
                <img src="assets/img/arts/'.$fetch['abyssal_art'].'" alt="" srcset="">
                <div class="delete-btn" data-id="'.$fetch['art_id'].'" onclick="removeFav(this.dataset.id)">
                    <div>
                        <i class="bx bx-trash" ></i>
                    </div>
                </div>
                <div class="text">
                    <div>
                        <h3>'.$fetch['title'].'</h3>
                        <p class="highlight">'.$fetch['count_comment'].'<span class="material-icons">chat_bubble_outline</span></p>
                    </div>
                    <div>
                        <p>by '.$fetch2['username'].'</p>
                        <p class="highlight" data-id="'.$fetch['art_id'].'"  onclick="artFav(this.dataset.id)" >'.$fetch['count_fav'].'<span class="material-icons">star_outline</span></p>
                    </div>
                </div>
            </li>              
        ';
        }
    }

    


?>


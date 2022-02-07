<?php
    include('dbConnect.php');
    

    $query = "SELECT * FROM art_abyssals ORDER BY count_fav AND count_comment DESC";

    $cmd = mysqli_query($conn,$query); 

    if(mysqli_num_rows($cmd) > 0){
        while($fetch = mysqli_fetch_array($cmd)){
           
            $userName = $fetch['id'];  
            $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
            $cmd2 = mysqli_query($conn,$query2); 
            $fetch2 = mysqli_fetch_array($cmd2);
            $artId = $fetch['art_id'];

            $queryCommentCount = "SELECT * FROM abyssal_comment WHERE art_id = $artId"; 
            $cmd3 = mysqli_query($conn,$queryCommentCount); 
            $countComment = mysqli_num_rows($cmd3);

            $queryFavCount = "SELECT * FROM abyssal_favorite WHERE art_id = $artId"; 
            $cmd4 = mysqli_query($conn,$queryFavCount); 
            $countFav = mysqli_num_rows($cmd4);

            echo '
                <li class="gallery-item" >
                <img src="./Assets/img/arts/'.$fetch['abyssal_art'].'" data-id="'.$fetch['art_id'].'"  onclick="artdetails(this.dataset.id)">
                <div class="text">
                    <div>
                        <h3>'.$fetch['title'].'</h3>
                        <p class="highlight" data-id="'.$fetch['art_id'].'"  onclick="gotoComment(this.dataset.id)">'.$countComment.'<span class="material-icons">chat_bubble_outline</span></p>
                    </div>
                    <div>
                        <p>by '.$fetch2['username'].'</p>
                        <p class="highlight" data-id="'.$fetch['art_id'].'"  onclick="artFav(this.dataset.id)" >'.$countFav.'<span class="material-icons">star_outline</span></p>
                    </div>
                </div>
                </li>                 
        ';
        }
    }

    


?>


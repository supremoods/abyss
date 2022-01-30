<?php
    include('dbConnect.php');
    session_start();
    $id = (int) $_SESSION['id'];
    $artId = $_REQUEST['id'];
    $topic = $_REQUEST['topic'];
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

    include('dbConnect.php');

    $query = "SELECT * FROM art_abyssals WHERE category = '$topic'";

    $cmd = mysqli_query($conn,$query); 
    

    if(mysqli_num_rows($cmd) > 0){
        while($fetch = mysqli_fetch_array($cmd)){
            $userName = $fetch['id'];  
            $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
            $cmd2 = mysqli_query($conn,$query2); 
            $fetch2 = mysqli_fetch_array($cmd2);

            echo '
            <li class="gallery-item" >
            <img src="./Assets/img/arts/'.$fetch['abyssal_art'].'" data-id="'.$fetch['art_id'].'"  onclick="artdetails(this.dataset.id)">
            <div class="text">
                <div>
                    <h3>'.$fetch['title'].'</h3>
                    <p class="highlight">'.$fetch['count_comment'].'<span class="material-icons">chat_bubble_outline</span></p>
                </div>
                <div>
                    <p>by '.$fetch2['username'].'</p>
                    <p class="highlight" data-topics="'.$topic.'" data-id="'.$fetch['art_id'].'"  onclick="artFavTopics(this.dataset.id, this.dataset.topics)" >'.$fetch['count_fav'].'<span class="material-icons">star_outline</span></p>
                </div>
            </div>
            </li>                
            ';
        }
    }

    mysqli_close($conn);

?>
<?php 
    include('dbConnect.php');
    if (isset($_POST["artID"])) {
        $artID = $_POST["artID"];
    }
    $query = "SELECT * FROM abyssal_comment WHERE art_ID = $artID";
    $cmd = mysqli_query($conn, $query);


    if(mysqli_num_rows($cmd) > 0){
        while($fetch = mysqli_fetch_array($cmd)){
            $user =  $fetch['id'];  
            $queryUser = "SELECT * FROM abyss_user where id = $user ";
            $cmdUser = mysqli_query($conn, $queryUser);
            $fetchImage = mysqli_fetch_array($cmdUser);
            echo '
                <div class="user-comment">
                    <img src="Assets/img/profile/'.$fetchImage['profileImage'].'" style="height:50px; width:50px; margin-right:10px;" alt="">
                    <pre>'.$fetch['comment'].'</pre>
                </div>
            ';
        }
    }

?>
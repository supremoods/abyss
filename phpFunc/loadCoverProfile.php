<?php
    include('dbConnect.php');
    session_start(); 
    $id = (int) $_SESSION['id'];

    $query = "SELECT * FROM abyss_user WHERE id = $id";

    $cmd = mysqli_query($conn,$query); 
    $fetch = mysqli_fetch_array($cmd);

    
    echo '
    <div class="heading-container"
    style="background-image: linear-gradient(rgba(248, 122, 221, 0.151), rgba(18, 12, 27, 1)),url(./Assets/img/coverProfile/'.$fetch['profileImage'].');">

        <div class="profile-name">
            <div class="user-icon">
                <div class="user-container">
                    <img src="./Assets/img/profile/'.$fetch['profileImage'].'" alt="">
                </div>
                <div class="upload-profile" onclick="modalProfile()">
                    <i class="bx bx-refresh"></i>
                    <span>change</span>
                </div>
            </div>

            <div class="users-info">
                <h1 id="user-name">
                   '.$fetch['username'].'
                </h1>
                <h1 id="user-status">0 Watchers | 1 Page view | 0 Abys </h1>
            </div>
        </div>

        <div class="profile-btn" onclick="modalCoverImage()">
            <a href="#" class="btn">
                <i class="bx bx-image-add"></i>
                <h1 id="cover-text">ADD COVER IMAGE</h1>
            </a>
        </div>
    </div>
    ';


?>


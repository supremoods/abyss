<div class="loadCoverImage">
    <div class="heading-container"
        style="background-image: linear-gradient(rgba(248, 122, 221, 0.151), rgba(18, 12, 27, 1)),url(Assets/img/coverProfile/<?php echo $fetch['coverProfile'] ?>)">
        <div class="profile-name">
            <div class="user-icon">
                <div class="user-container">
                    <img src="./Assets/img/profile/<?php echo $fetch['profileImage'] ?>" alt="">
                </div>
                <div class="upload-profile" onclick="modalProfile()">
                    <i class="bx bx-refresh"></i>
                    <span>change</span>
                </div>
            </div>

            <div class="users-info">
                <h1 id="user-name">
                    <?php echo $fetch['username'] ?>
                </h1>

                <?php
                    $watcherCount ="SELECT COUNT(watchId) AS watchers FROM abyss_watcher LEFT JOIN abyss_user ON abyss_user.id = abyss_watcher.userID WHERE watchId = $id ";
                    $sql = mysqli_query($conn,$watcherCount);
                    $fetchCount = mysqli_fetch_array($sql);

                    $AbyssCount ="SELECT COUNT(title) AS abyssals FROM art_abyssals WHERE id = $id";
                    $sql = mysqli_query($conn,$AbyssCount);
                    $fetchCountAbyss = mysqli_fetch_array($sql);                   

                ?>


                <h1 id="user-status">
                    <?php echo $fetchCount['watchers']?> Watchers | <?php echo $fetchCountAbyss['abyssals']?> Abyss
                </h1>
            </div>
        </div>

        <div class="profile-btn" onclick="modalCoverImage()">
            <a href="#" class="btn">
                <i class="bx bx-image-add"></i>
                <h1 id="cover-text">ADD COVER IMAGE</h1>
            </a>
        </div>
    </div>
</div>


<div class="navigation">
    <div class="nav-list">
        <ul>
            <li><a href="profile.php">Home</a></li>
            <li><a href="gallery.php">Gallery</a></li>
            <li><a href="favorites.php">Favourites</a></li>
            <li><a href="profile-post.php">Posts</a></li>
        </ul>
    </div>
</div>
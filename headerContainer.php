<div class="header-container">
    <div class="header">
      <button class="deck-btn" onclick="sidebarNav()">
        <span class="material-icons"> grid_view </span>
      </button>

      <a href="home.php" class="logo">
        <div>
        <img src="Assets/logoWord.png" alt="" style="height: 30px; ">
        </div>
      </a>

      <div class="nav-wrapper">
        <div class="search-sec">
          <div>
            <input type="text" name="searchArt" id="searchArt" placeholder="Search & Discover" />
            <span class="material-icons"> search </span>
          </div>
        </div>

        <div class="navlinks">
          <a href="Chat.php" class="join-link">
              <span class="material-icons">
                  textsms
              </span>
          </a>

        </div>
        <?php
                $id = (int) $_SESSION['id'];

                $query = mysqli_query ($conn, "SELECT * FROM abyss_User WHERE id = '$id' ") or die (mysqli_error());
                $fetch = mysqli_fetch_array ($query);
               
        ?>
        <div class="avatar-sec">
          <img src="Assets/img/profile/<?php echo $fetch['profileImage'] ?>" style="height:40px; width:40px;" alt="">
          <div class="account-links">
            <ul class="link-container">
              <h1><?php echo $fetch['username'] ?></h1>
              <li><a href="profile.php">Profile</a></li>
              <li><a href="gallery.php">Gallery</a></li>
              <li><a href="favorites.php">Favourites</a></li>
              <li><a href="profile-post.php">Posts</a></li>
              <li><a href="about.php">About</a></li>
              <h1 class="submitDrop">Submit</h1>
              <li class="submitDrop"><a href="#" onclick="abyssalModal()">Abyssals</a></li>
              <li class="submitDrop"><a href="#" onclick="statusModal()">Status Update</a></li>
              <li><a href="phpFunc/logout.php">Logout</a></li>
            </ul>
          </div>
        </div>

        <div class="submit-btn">
          <p>Submit</p>
          <div class="submit-container">
            <div class="submit-links">
              <button class="btn-abyssals" onclick="abyssalModal()">Abyssals</button>
              <button class="btn-status" onclick="statusModal()">Status Update</button>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
<?php
  include('phpFunc/dbConnect.php');
  include('phpFunc/session.php');
  artDetailsSession();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss | Art Details</title>
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/artDetails.css" />
  <link rel="stylesheet" href="Assets/css/modal.css" />
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>
</head>
</head>

<body class="body-root">
  <div id="root">
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
              <input type="text" name="" id="" placeholder="Search & Discover" />
              <span class="material-icons"> search </span>
            </div>
          </div>

          <div class="navlinks">
            <a href="Chat.php" class="join-link">
                <span class="material-icons">
                    textsms
                </span>
            </a>
            <a href="#" class="login-link">
                <span class="material-icons">
                    notifications
                </span>
            </a>
          </div>
  
          <?php
                  $id = (int) $_SESSION['id'];

                  $query = mysqli_query ($conn, "SELECT * FROM abyss_User WHERE id = '$id' ") or die (mysqli_error());
                  $fetch = mysqli_fetch_array ($query);

                  $profImage = $fetch['profileImage'];
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
    
    <div class="loadEmpty">

    </div>
    <main class="container">
      <!-- sidebar navigation -->
      <div class="sidebar-container">
        <div class="sidebar" onclick="sidebarNav()">
          <ul>
            <li class="list active">
              <a href="home.php">
                <span class="material-icons">home</span>
                <span class="title">Home</span>
              </a>
            </li>
            <li class="list">
              <a href="topic.php">
                <span class="material-icons">category</span>
                <span class="title">Topics</span>
              </a>
            </li>
            <li class="list">
                <a href="popular.php">
                <span class="material-icons">whatshot</span>
                <span class="title">Popular</span>
                </a>
            </li>
          </ul>
        </div>
      </div>
      <?php
          $art_id = $_GET['abyssalsId'];

          $query = "SELECT * FROM art_abyssals WHERE  art_id= '$art_id ' ";

          $cmd= mysqli_query($conn, $query);
          $fetch = mysqli_fetch_array($cmd);

          $userName = $fetch['id'];  
          $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
          $cmd2 = mysqli_query($conn,$query2); 
          $fetch2 = mysqli_fetch_array($cmd2);

          $query3 = "SELECT * FROM art_abyssals ";

          $count = 0;
          $place = 0;

          $cmd3= mysqli_query($conn, $query3);

          $query4 = "SELECT COUNT(*) FROM art_abyssals ";
          $cmd4= mysqli_query($conn, $query4);
          $fetch4 = mysqli_fetch_array($cmd4);

          $rowCounts =  $fetch4['COUNT(*)'];

       //   echo '<script>alert('.$rowCounts.');</script>';
          if(mysqli_num_rows($cmd3) > 0){
            
            while( $fetch3 = mysqli_fetch_array($cmd3)){
              $array[$count] = $fetch3['art_id'];
              if($art_id == $fetch3['art_id']){
                $prevIndex = $count-1;
                  if($prevIndex < 0){
                    $prevIndex = 0;
                  }
                $nextIndex = $count+1;
                if($nextIndex == $rowCounts){
                   $nextIndex = $rowCounts - 1;
                }
              }
              $count++;
            }
          }
         
         
      ?>
      <!-- main content -->


      <div class="main-content">
        <div class="art-details-section">
            <div class="art-stage-wrapper">
                <div class="gal-back-btns hov" onclick="backGallery()">
                    <i class='bx bx-chevron-left' ></i>
                    <p>gallery</p>
                </div>
                <div class="prev-btns hov">
                    <i data-id="<?php echo $array[$prevIndex] ?>" class='bx bx-chevron-left' onclick="prevSlide(this.dataset.id)"></i>
                </div>
                <div class="art-stage-img">
                    <img src="Assets/img/arts/<?php echo $fetch['abyssal_art']?>" alt="">
                </div>
                <div class="next-btns hov">
                    <i data-id="<?php echo $array[$nextIndex] ?>" class='bx bx-chevron-right' onclick="nextSlide(this.dataset.id)"></i>
                </div>
            </div>
            <div class="art-details-wrapper">
                <div class="art-header">
                    <div id="loadFav" class="btn-fav" data-id="<?php echo $fetch['art_id']?>"  onclick="artFavProfilesDetails(this.dataset.id)" >
                        <input id="favoritesToggle" type="checkbox" class="favoritesToggle"  <?php 
                          $artID = $fetch['art_id'];
                          $query = "SELECT * FROM abyssal_favorite WHERE id= $id AND art_id = $artID ";
                          $cmd = mysqli_query($conn,$query); 
                          $count = mysqli_num_rows($cmd);
                        if($count >= 1){echo 'checked';} ?>/>
                        <i class='bx bx-star' ></i>
                        <p>Add to Favorites</p>
                    </div>
                    <div class="btn-comment" data-id="<?php echo $fetch['art_id']?>"  onclick="gotoComment(this.dataset.id)">
                        <i class='bx bx-comment' ></i>
                        <p>Comment</p>
                    </div>
                    <div class="btn-dots">
                        <i class='bx bx-dots-horizontal-rounded' ></i>
                    </div>
                </div>

                <div class="profile-header">
                    <div class="profile-avatar">
                        <img src="assets/avatar/avatar1.png" alt="">
                    </div>
                    <div class="art-details" >
                        <h1><?php echo $fetch['title'] ?></h1>
                        <p>by <?php echo $fetch2['username'] ?></p>
                    </div>
                    <div class="date-pub">
                        <p>Published:  <?php echo $fetch['abyssals_date'] ?></p>
                    </div>
                </div>

                <div class="socialCounts">  
                    <div class="fav-count" id="fav-count">
                        <i class='bx bxs-star' ></i>
                        <p><span><?php echo $fetch['count_fav']?></span> Favorite</p>
                    </div>
                    <div class="comment-count" id="comment-count">
                        <i class='bx bxs-comment' ></i>
                        <p><span><?php echo $fetch['count_comment'] ?></span> Comments</p>
                    </div>
                    <div class="views-count">
                        <span class="material-icons">visibility</span>
                        <p><span>23K</span> Views</p>
                    </div>
                </div>

                <div class="art-description">
                    <pre><?php echo $fetch['description'] ?></pre>
                </div>

                <div id="comment-section" class="comment-section">
                    <div class="comment">
                      <div class="profile-img">
                        <img src="Assets/img/profile/<?php echo  $profImage ?>" style="height:50px; width:50px; margin-right:10px;" alt="">
                      </div>
                      <div class="input-comment">
                        <textarea  id="userComment" name="userComment" data-id="<?php echo $fetch['art_id']?>" class="input-cmnt" type="text" placeholder="Add a new comment"></textarea>
                        <div id= "loadComment" class="user-comment-wrapper">
                          <?php
                            include ('phpFunc/loadComment.php');
                          ?>
                        </div>
                      </div>
                    </div>
                </div>

            </div>
        </div>
      </div>  

      <!-- footer section -->
      <footer class="footer">
        <div class="footer-container">
          <div class="row">
            <div id="logo-footer" class="footer-col">
              <ul>
                <li><a href="#"> <img src="Assets/logoWord.png" alt="" style="height: 30px; "></a></li>
              </ul>
            </div>
            <div class="footer-col">
              <ul>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">CONTACT</a></li>
                <li><a href="#">MEMBERSHIP</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <ul>
                <li><a href="#">DEVELOPERS</a></li>
                <li><a href="#">ADVERTISE</a></li>
                <li><a href="#">TERMS OF SERVICE</a></li>
                <li><a href="#">PRIVACY POLICY</a></li>
              </ul>
            </div>
          
            <div id="social" class="footer-col">
              <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
        </div>
      </footer>
      
    </main>
    <!-- modal notif -->
    <div class="modal-post">
      <form method="post" enctype="multipart/form-data" id="uploadStatus">
        <div class="modal-post-wrapper">
          <div class="modal-post-header">
            <div class="left-section">
              <div class="title">
                <h1>Update Status</h1>
                <div>
                  <p>Who can see it? </p>
                  
                  <select id="privacy" name="privacy">
                    <option value="everyone">Everyone</option>
                    <option value="friends">Friends</option>
                    <option value="only_me">Only me</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="right-section">
                <div class="post-close-btn">
                  <div><i class='bx bx-x closeBtn' onclick="statusModalClose()"></i></div>
                </div>
            </div>
          </div>
          <div class="modal-post-content">
              <div class="title-content">
                <div class="cover-image">
                  <img class="post-art" src="Assets/img/sisu_bg-min.png" >
                </div>
                <div class="post-title">
                  <textarea type="text" name="post-title" placeholder="Add your title here"></textarea>
                </div>
                <div class="add-img-btn">
                  <div onclick="postBtnActive()">
                    <span><i class='bx bx-image-add'></i>Add Cover Image</span>
                  </div>
                  <input id="add-post-btn" name="post_art_image" type="file" onclick="getPostImage()" hidden>
                </div>
              </div>
              <div class="post-description">
                <div class="desc-container">
                  <textarea name="post-desc" id="post-desc" cols="49" rows="10" placeholder="Start typing your main text here"></textarea>
                </div>
              </div> 
          </div>
          <div class="modal-post-footer">
              <div class="submit-btn">
                <button name="postubmit" id="submit_post" type="submit">Submit</button>
              </div>
          </div>
        </div>
      </form>
    </div>

    <div class="modal-abyssals">
      <form method="post" enctype="multipart/form-data" id="uploadImg">
        <div class="modal-abyssals-wrapper">
          <div class="modal-abyssals-header">
            <div class="left-section">
              <div class="title">
                <h1>Submit Abyssal</h1>
                <div>
                  <p>Who can see it? </p>   
                  <select id="privacy" name="privacy">
                    <option value="everyone">Everyone</option>
                    <option value="friends">Friends</option>
                    <option value="only_me">Only me</option>
                  </select>
                </div>
                <div>
                  <p>Category</p>                  
                  <select id="category" name="category">
                    <option value="3D">3D</option>
                    <option value="Adoptables">Adoptables</option>
                    <option value="Anime and Manga">Anime and Manga</option>
                    <option value="Anthro">Anthro</option>
                    <option value="Comics">Comics</option>
                    <option value="Digital Art">Digital Art</option>
                    <option value="Drawing and Paintings">Drawing and Paintings</option>
                    <option value="Fan Art">Fan Art</option>
                    <option value="Game Art">Game Art</option>
                    <option value="Science and Fiction">Science and Fiction</option>
                    <option value="Sculpture">Sculpture</option>
                    <option value="Traditional Arts">Traditional Arts</option>
                    <option value="Tutorials">Tutorials</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="right-section">
                <div class="abyssals-close-btn">
                  <div><i class='bx bx-x closeBtn' onclick="abyssalModalClose()"></i></div>
                </div>
            </div>
          </div>
          <div class="modal-abyssals-content">
              <div class="title-content">
                <div class="cover-image">
                  <img class="abyssal-art" src="Assets/img/sisu_bg-min.png" >
                </div>
                <div class="abyssals-title">
                  <textarea type="text" name="abyssals-title" placeholder="Add your title here"></textarea>
                </div>
                <div class="add-img-btn">
                  <div onclick="abyssalBtnActive()">
                    <span><i class='bx bx-image-add'></i>Add Abyssal</span>
                  </div>
                  <input id="add-abyysals-btn" name="abyssal_art_image" type="file" onclick="getAbyssalImage()" hidden>
                </div>
              </div>
              <div class="abyssals-description">
                <div class="desc-container">
                  <textarea name="abyssals-desc" id="abyssals-desc" cols="49" rows="10" placeholder="Start typing your main text here"></textarea>
                </div>
              </div> 
          </div>
          <div class="modal-abyssals-footer">
              <div class="submit-btn">
                <button name="AbyssalSubmit" id="submit_Abyssals" type="submit">Submit</button>
              </div>
          </div>
        </div>
      </form>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="Assets/js/script.js"></script>
  <script src="Assets/js/comment.js"></script>

</body>

</html>
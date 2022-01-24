<?php
  include('phpFunc/dbConnect.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss | Home</title>
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/topic_gallery.css" />
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
            <a href="login.php" class="login-link">
                <span class="material-icons">
                    notifications
                </span>
            </a>
          </div>
  
          <div class="avatar-sec">
            <span class="material-icons"> account_box </span>
            <div class="account-links">
              <ul class="link-container">
                <?php
                  session_start();
                  $id = (int) $_SESSION['id'];

                  $query = mysqli_query ($conn, "SELECT * FROM abyss_User WHERE id = '$id' ") or die (mysqli_error());
                  $fetch = mysqli_fetch_array ($query);
                  echo "
                  <h1>" .$fetch['username']."</h1>
                  ";
                ?>
                <!-- <h1><?//php $fetch['username'] ?></h1> -->
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
          </div>

        </div>
      </div>
    </div>
    

    <main class="container">
      <!-- sidebar navigation -->
      <div class="sidebar-container">
        <div class="sidebar">
          <ul>
            <li class="list ">
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
            <li class="list active">
                <a href="popular.php">
                <span class="material-icons">whatshot</span>
                <span class="title">Popular</span>
                </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- main content -->
      <div class="main-content">

        <div class="gallery-section">
            
            <div class="img-cover">
                <img src="Assets/img/topics/anthro.jpg" alt="">
            </div>

   
          
          <!-- <div class="space">

          </div> -->
          
         
          <!-- gallery -->
          <div class="gallery">
            <div class="back-link">
                <a href="topic.php" rel="noopener noreferrer"><i class='bx bx-chevron-left'></i> All Topic</a>
            </div>
            <div class="topic-header">
                <div class="title">
                    <h1>Anthro</h1>
                </div>
                <div class="description">
                    <p>Your home for furry-related art and fiction. Fur, tails, scales, and wings are all welcome here.</p> 
                </div>
            </div> 
            <ul class="gallery-wrapper">
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img1.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Nightmare</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by AlvaroCardozoW</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img2.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>The war is over, my knight. You can go home.</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by AizelKon</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img3.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Portrait 03</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by NIRASATAN</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img4.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>MATRIX 4 - HARBOR</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by Leifheanzo</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img5.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Look At Me</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by ZialerZ</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img6.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Shou</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by ZialerZ</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img7.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Cosmic emptiness</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by Gabrix89</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img1.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Nightmare</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by AlvaroCardozoW</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img2.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>The war is over, my knight. You can go home.</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by AizelKon</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img3.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Portrait 03</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by NIRASATAN</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img4.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>MATRIX 4 - HARBOR</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by Leifheanzo</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img5.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Look At Me</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by ZialerZ</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()"> 
                <img src="assets/img/arts/img6.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Shou</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by ZialerZ</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              <li class="gallery-item" onclick="artdetails()">
                <img src="assets/img/arts/img7.jpg" alt="" srcset="">
                <div class="text">
                  <div>
                    <h3>Cosmic emptiness</h3>
                    <p class="highlight">20<span class="material-icons">chat_bubble_outline</span></p>
                  </div>
                  <div>
                    <p>by Gabrix89</p>
                    <p class="highlight" >539<span class="material-icons">star_outline</span></p>
                  </div>
                </div>
              </li>
              
            </ul>
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
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="Assets/js/script.js"></script>
  <script>
    $(window).scroll(function(){
      var scrollPos = $(this).scrollTop();
      $(".img-cover img").css({
        'height' : 100 + scrollPos + '%'
      });
    });
  </script>
</body>

  </html>
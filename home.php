<?php
  include('phpFunc/session.php');
  homeSession();
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
  <link rel="stylesheet" href="Assets/css/home.css" />
  <link rel="stylesheet" href="Assets/css/modal.css" />
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>
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
  
          <div class="avatar-sec">
            <img src="Assets/img/icons/user-rectangle-solid-24 (2).png" alt="">
            <div class="account-links">
              <ul class="link-container">
                <?php
                  $id = (int) $_SESSION['id'];

                  $query = mysqli_query ($conn, "SELECT * FROM abyss_User WHERE id = '$id' ") or die (mysqli_error());
                  $fetch = mysqli_fetch_array ($query);
                ?>
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
    

    <main class="container">
      <!-- sidebar navigation -->
      <div class="sidebar-container">
        <div class="sidebar">
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

      <!-- main content -->
      <div class="main-content">

        <div class="gallery-section">

          <!-- banner -->
          <div class="banner-container">
            <div class="banner-wrapper">
              <header class="banner">
                <div>
                  <h1>Home</h1>
                </div>
                <div class="banner-links">
                    <div class="abyssals-link">
                        <a href="home.php">Abyssals</a>
                    </div>

                    <div class="posts-link">
                        <a href="post.php" class="links">Posts</a>
                    </div>
                </div>
              </header>
            </div>
          </div>
          <!-- <div class="topic-header">
  
          </div> -->
          
          <div class="space">

          </div>

          <!-- topics -->
          <!-- carousel -->
          <section class="teams" id="teams">
            <div class="max-width">
                <h2 class="title">Explore <span><a href="http://">Topics</a></span></h2>
                <div class="carousel owl-carousel">
                    <div class="card">
                        <div class="box">
                            <img src="Assets/img/digitalArt.jpg" alt="">
                            <div class="text">Digital Art</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <img src="Assets/img/comics.jpg" alt="">
                            <div class="text">Comics</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <img src="Assets/img/fantasy.jpg" alt="">
                            <div class="text">Fantasy</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <img src="Assets/img/gameArt.jpg" alt="">
                            <div class="text">Game Art</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <img src="Assets/img/scienceFiction.jpg" alt="">
                            <div class="text">Science Fiction</div>
                        </div>
                    </div>
                    <div class="card">
                      <div class="box">
                          <img src="Assets/img/poetry.jpg" alt="">
                          <div class="text">Poetry</div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="box">
                          <img src="Assets/img/wallpaper.jpg" alt="">
                          <div class="text">Wallpaper</div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="box">
                          <img src="Assets/img/Traditional art.jpg" alt="">
                          <div class="text">Traditional Art</div>
                      </div>
                    </div>           
                </div>
            </div>
          </section>
         
          <!-- gallery -->
          <div class="gallery">
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
    
    <!-- modal notif -->
    <div class="modal-status">
      <div class="modal-status-wrapper">
        <div class="modal-header">
          <div class="left-section">
            <div class="title">
              <h1>Submit Status</h1>
              <div>
                <p>Who can see it? </p>
                <select id="privacy">
                  <option value="everyone">Everyone</option>
                  <option value="friends">Friends</option>
                  <option value="only_me">Only me</option>
                </select>
              </div>
            </div>
          </div>
          <div class="right-section">
              <div class="close-btn">
                <button><i class='bx bx-x closeBtn' onclick="statusModalClose()"></i></button>
              </div>
          </div>
        </div>
        <div class="modal-content">
          <div class="title-content">
            <div class="cover-image">
              <img src="Assets/img/sisu_bg-min.png" >
     
            </div>
            <div class="status-title">
              <textarea type="text" name="status-title" placeholder="Add your title here"></textarea>
            </div>
            <div class="add-img-btn">
              <button>
                <span> <i class='bx bx-image-add'></i>Add cover image</span>
              </button>
            </div>
          </div>
          <div class="status-description">
            <div class="desc-container">
              <textarea name="status-desc" id="status-desc" cols="49" rows="10" placeholder="Start typing your main text here"></textarea>
            </div>
          </div>
 
        </div>
        <div class="modal-footer">
            <div class="submit-btn">
              <button name="submit" id="submit" type="submit">Submit</button>
            </div>
        </div>
      </div>
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
</body>

</html>
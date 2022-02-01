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
  <title>Abyss | About Us</title>
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/developer.css" />
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
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
              <a href="#">
                <span class="material-icons">home</span>
                <span class="title">Home</span>
              </a>
            </li>
            <li class="list">
              <a href="#">
                <span class="material-icons">category</span>
                <span class="title">Topics</span>
              </a>
            </li>
            <li class="list">
              <a href="popular.html">
                <span class="material-icons">whatshot</span>
                <span class="title">Popular</span>
              </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- main content -->
      <div class="main-content">
          <div class="about-container">
            <div class="about-wrapper">
              <div class="about-content">
               <h1>About Abyss</h1>
                <div class="about-description">
                  <pre>We are the starting point for art, but it is just the beginning. We're a community for everyone's creative side to grow and heighten their own sense of taste, but that's not all. 
               
We think that art belongs to everyone, so we create a platform where we can establish the cultural framework in which it's made, found, and shared.
                 
Artists adore us because we are a welcoming and encouraging environment. We assist them in discovering their own individuality via self-expression. We provide them the skills, resources, and exposure they need to improve as artists and become more successful. We encourage individuals to make art by feeding their imaginations.
                 
We give a never-ending source of amusement and motivation. This is the first place you'll see it. This is where a committed community of likeminded creatives embraces and expresses anything you're into. This is where the future of popular culture is fed by a worldwide undercurrent of invention.</pre>
                </div>
              </div>

              <div class="about-cards">
                <h1>Meet our Team</h1>
                  <div class="upper-cards">
                      <div class="cards">
                        <div class="card-img">
                          <img src="Assets/img/Lappay.jpg" alt="Lappay, John">
                          <h1>Nam, Do-San</h1>
                          <p>Team Leader / Lead Developer</p>
                        </div>
                      </div>

                      <div class="cards">
                        <div class="card-img">
                          <img src="Assets/img/Kiko.jpg" alt="Panaligan, Francis Edian">
                          <h1>Panaligan, Francis Edian</h1>
                          <p>Front-end Developer</p>
                        </div>
                      </div>

                      <div class="cards">
                        <div class="card-img">
                          <img src="Assets/img/Kim.jpg" alt="Villacer, Kim Francis">
                              <h1>Villacer, Kim Francis</h1>
                              <p>Researcher / Web Developer</p>
                        </div>
                      </div> 
                   </div>  

                  <div class="lower-cards">
                  <div class="cards">
                        <div class="card-img">
                          <img src="Assets/img/Emil.jpg" alt="Borata, Emil Marie">
                          <h1>Borata, Emil Marie</h1>
                          <p>Researcher / Web Developer</p>
                        </div>
                      </div>

                      <div class="cards">
                        <div class="card-img">
                          <img src="Assets/img/Drilon.jpg" alt="Drilon, Jhon Carlos">
                          <h1>Drilon, Jhon Carlos</h1>
                          <p>Researcher / Web Developer</p>
                        </div>
                      </div>

                      <div class="cards">
                       <h1>Hello</h1>
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
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="Assets/js/script.js"></script>
</body>

</html>
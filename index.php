<?php
    include('phpFunc/session.php');
    indexSession();

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss</title>
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/style.css" />
  <link rel="stylesheet" href="Assets/css/load.css" />
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
        <button class="deck-btn">
          <i class='bx bx-grid-alt'></i>
        </button>
  
        <a href="home.php" class="logo">
          <div>
            <img src="Assets/logoWord.png" alt="" style="height: 24px; ">
        </div>
        </a>
  
        <div class="nav-wrapper">
          <div class="search-sec">
            <div>
              <input type="text" name="" id="" placeholder="Search & Discover" />
              <i class='bx bx-search' ></i>
            </div>
          </div>
          <div class="navlinks">
            <a href="join.php" class="join-link">
              <span>Join</span>
            </a>
            <a href="login.php" class="login-link">
              <span>Log In</span>
            </a>
          </div>
  
          <!-- <div class="avatar-sec">
            <img src="Assets/img/icons/user-rectangle-solid-24 (2).png" alt="">
          </div> -->
        </div>
      </div>
    </div>
    

    <main class="container">
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
          </ul>
        </div>
      </div>

      <div class="main-content">
        <div class="gallery-section">
          <div class="banner-container">
            <div class="banner-wrapper">
              <header class="banner">
                <div>
                  <h1>Home</h1>
                </div>
              </header>
            </div>
          </div>
          <!-- <div class="topic-header">
  
          </div> -->
          
          <div class="space">

          </div>

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
          
          <div class="gallery">
            <ul class="gallery-wrapper">
              <?php
                include('phpFunc/loadAbyssals.php');
              ?>
            </ul>
          </div>
        </div>
      </div>
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
    <div class="footer-fixed">
      <div class="caption">
        <span>Join the world's largest art community and get personalized art recommendations.</span>
      </div>
      <div class="auth">
        <button class="login-foot">
          Log In
        </button>
        <button class="join-foot">
          Join
        </button>
      </div>
    </div>
  </div>
  <div id="loader">
        <svg width="140" height="140" viewBox="0 0 280 280" fill="none" xmlns="http://www.w3.org/2000/svg">
                <g>
                <line x1="59.9833" y1="140.333" x2="219.978" y2="139" stroke="#7579ff" stroke-width="4"/>
                <circle cx="60" cy="140" r="5" fill="#7579ff"/>
                <circle cx="220" cy="139" r="5" fill="#7579ff"/>
                </g>
                <path class="circle" d="M109.957 122.655L140 105.309L170.043 122.655V157.345L140 174.691L109.957 157.345V122.655Z" stroke="#7579ff" stroke-width="4"/>
                <circle class="circle" cx="140" cy="140" r="13" stroke="#f5d77b" stroke-width="4"/>
                <circle class="circle" cx="110" cy="192" r="13" stroke="#f7a78f" stroke-width="4"/>
                <circle class="circle circle_s" cx="85" cy="232" r="8" stroke="#7579ff" stroke-width="4"/>
                <circle class="circle" cx="170" cy="88" r="13" stroke="#7579ff" stroke-width="4"/>
                <circle class="circle circle_s" cx="110" cy="192" r="5" fill="#f7a78f"/>
                <circle class="circle circle_s" cx="185" cy="61" r="5" fill="#f5d77b"/>
        </svg>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="Assets/js/script.js"></script>
</body>

</html>
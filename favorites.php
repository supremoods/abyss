<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss | Profile</title>
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/favorites.css" />
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
</head>
</head>

<body>
  <div id="root">
    <div class="header-container">
      <div class="header">
        <button class="deck-btn">
          <span class="material-icons"> grid_view </span>
        </button>

        <a href="#blank" class="logo">
          <div>
            <img src="Assets/logoWord.png" alt="" style="height: 24px; ">
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
            <a href="join.html" class="join-link">
              <span class="material-icons">
                textsms
              </span>
            </a>
            <a href="login.html" class="login-link">
              <span class="material-icons">
                notifications
              </span>
            </a>
          </div>

          <div class="avatar-sec">
            <span class="material-icons"> account_box </span>
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
        <div class="heading-container">

          <div class="profile-name">
            <div class="user-icon">
              <i class='bx bxs-user'></i>
            </div>

            <div class="users-info">
              <h1 id="user-name">Penguinnnn14</h1>
              <h1 id="user-status">0 Watchers | 1 Page view | 0 Abys </h1>
            </div>
          </div>

          <div class="profile-btn">
            <a href="#" class="btn">
              <i class='bx bx-image-add'></i>
              <h1 id="cover-text">ADD COVER IMAGE</h1>
            </a>
          </div>

        </div>

        <div class="navigation">
          <div class="nav-list">
            <ul>
              <li><a href="profile.html">Home</a></li>
              <li><a href="gallery.html">Gallery</a></li>
              <li><a href="favorites.html">Favourites</a></li>
              <li><a href="profile-post.html">Posts</a></li>
              <li><a href="#">About</a></li>
            </ul>
          </div>
        </div>

        <div class="favorites-container">
          <div class="favorites-content">
            <div class="favorites-box">
              <h1>Collect Your Favorites</h1>
              <p>Simply star  your favourite deviations as you browse, to show other deviants what you love.</p>
              <a href="#">Browse</a>
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

</body>

</html>
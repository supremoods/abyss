<?php
  include('phpFunc/dbConnect.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss | Posts</title>
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/posts.css" />
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>
</head>
</head>

<body>
  <div id="root">
    <div class="header-container">
      <div class="header">
        <button class="deck-btn">
          <span class="material-icons"> grid_view </span>
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
            <div class="submit-container">
              <div class="submit-links">
                <button class="btn-abyssals">Abyssals</button>
                <button class="btn-status-header">Status Update</button>
              </div>
            </div>
          </div>

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
            <li class="list">
                <a href="popular.php">
                <span class="material-icons">whatshot</span>
                <span class="title">Popular</span>
                </a>
            </li>
          </ul>
        </div>
      </div>

      <div class="main-content">
        <div class="posts-section">
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

          
          <div class="posts-container">
              <div class="posts-wrapper">
                <div class="posts-content">
                    <div class="posts-area">
                      <div class="post-ccx">
                        <div class="post-cvx-grp">
                          <div class="profile-img">
                            <span class="material-icons"> account_box </span>
                          </div>
                          <div class="post-input">
                            <input type="text" class="input-post-btn" placeholder="What's going on, <?php echo $fetch['username'] ?> ?" >
                          </div>
                        </div>
                        <div class="post-btn-grp">
                          <div class="btn-submit">
                            <button class="btn-status">STATUS UPDATE</button>
                          </div>
                        </div>
                      </div>


                      <div class="post-data">
                        <div class="post-header">
                          <div class="profile-img">
                            <span class="material-icons"> account_box </span>
                          </div>
                          <div class="post-name-time">
                            <div class="post-name">
                              <p>AlvaroCardozoW</p>
                            </div>
                            <div class="post-time">
                              <p>2 days ago</p>
                            </div>
                          </div>
                          <div class="post-menu-btn">
                            <span class="material-icons"> more_horiz </span>
                          </div>
                        </div>

                        <div class="post-title">
                          <img src="Assets/img/sisu_bg-min.png" >
                          <div class="title">
                            <h1>New year new stuff</h1>
                          </div>
                        </div>
                        <div class="post-description">
                          <pre>
Hi there! It's been a while since I wrote any journal update, seems like a good time to do so. 

It's been a while since I posted anything aside from pages of "I Await a Guardian" but in all honesty, ever since december, I'm working on a new project next to it. Around 40-page comic of my own idea, so far I'm 3 pages away of finishing first 10 pages. I will start publishing

once first 10-11 pages are done. It may still take a while. Aside from that - if possible - I will post smaller drawings, although so far those two stories consume most of my free time so

I'm not sure if I will do any in-between stuff yet ^^'


Also, Metal Gear Solid 3 holds up pretty well. I'm having great exprience even if I suck at stealth as usual - not even medium-sneaky :P
                          </pre>
                        </div>

                        <div class="post-btns">
                          <div class="btns-left">
                            <div class="btn-fav">
                              <span class="material-icons">star_outline</span>
                              <p>Add to Favourites</p>
                            </div>
                            <div class="btn-comment">
                              <span class="material-icons">chat_bubble_outline</span>
                              <p>Comment</p>
                            </div>
                            <div class="btn-share">
                              <span class="material-icons">share</span>
                              <p>Share</p>
                            </div>
                          </div>

                          <div class="counts-right">
                            <div class="counts">
                              <div class="count-fav">
                                <span class="material-icons">star</span>
                                <p>30</p>
                              </div>
                              <div class="count-comment">
                                <span class="material-icons">chat_bubble</span>
                                <p>30</p>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="comment-section">
                          <div class="comment">
                            <div class="profile-img">
                              <span class="material-icons"> account_box </span>
                            </div>
                            <div class="input-comment">
                              <input class="input-cmnt" type="text" placeholder="Add a new comment">
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="ads-area">
                      <div class="events">
                        <img src="assets/img/arts/img7.jpg" >
                        <div class="events-title">
                          <h1>Artist Feature: kristyglas</h1>
                          <p>1 day ago</p>
                        </div>
                        <div class="events-btns">
                          <div class="btns-left">
                            <div>
                              <img src="assets/logo.png" style="height: 22px; width:22px;"alt="">
                              <span>team</span>
                            </div>
                          </div>
                          <div class="btns-right">
                            <div class="btns-count-comment">
                              <span class="material-icons">chat_bubble_outline</span>
                              <p>30</p>
                            </div>
                            <div class="btns-count-fav">
                              <span class="material-icons">star_outline</span>
                              <p>30</p>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="events">
                        <img src="assets/asset_2___journal_header__5__by_team_dexn110-fullview.png" >
                        <div class="events-title">
                          <h1>Tutorial: Draw Pikachu with Ry-Spirit</h1>
                          <p>1 day ago</p>
                        </div>
                        <div class="events-btns">
                          <div class="btns-left">
                            <div>
                              <img src="assets/logo.png" style="height: 22px; width:22px;"alt="">
                              <span>team</span>
                            </div>
                          </div>
                          <div class="btns-right">
                            <div class="btns-count-comment">
                              <span class="material-icons">chat_bubble_outline</span>
                              <p>30</p>
                            </div>
                            <div class="btns-count-fav">
                              <span class="material-icons">star_outline</span>
                              <p>30</p>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="events">
                        <img src="assets/img/arts/img4.jpg" >
                        <div class="events-title">
                          <h1>Artist Feature: kristyglas</h1>
                          <p>3 days ago</p>
                        </div>
                      </div>
                    </div>

                </div>
              </div>
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
                <button><i class='bx bx-x closeBtn'></i></button>
              </div>
          </div>
        </div>
        <div class="modal-content">
          <div class="title-content">
            <div class="cover-image">
              <!-- <img src="Assets/img/sisu_bg-min.png" > -->
              <img src="Assets/icons/1200px-Picture_icon_BLACK.svg.png" >
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
      <div class="modal-abyssals-wrapper">
        <div class="modal-abyssals-header">
          <div class="left-section">
            <div class="title">
              <h1>Submit Abyssal</h1>
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
                <button><i class='bx bx-x closeBtn'></i></button>
              </div>
          </div>
        </div>
        <div class="modal-abyssals-content">
          <div class="title-content">
            <div class="cover-image">
              <img src="Assets/img/sisu_bg-min.png" >
            </div>
            <div class="abyssals-title">
              <textarea type="text" name="abyssals-title" placeholder="Add your title here"></textarea>
            </div>
            <div class="add-img-btn">
              <button>
                <span><i class='bx bx-image-add'></i>Add Abyssal</span>
              </button>
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
              <button name="submit" id="submit" type="submit">Submit</button>
            </div>
        </div>
      </div>
    </div>

  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="Assets/js/post.js"></script>
</body>

</html>
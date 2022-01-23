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

<body>
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
            <span class="material-icons"> account_box </span>
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

      <!-- main content -->
      <div class="main-content">
        <div class="art-details-section">
            <div class="art-stage-wrapper">
                <div class="gal-back-btns hov">
                    <i class='bx bx-chevron-left' ></i>
                    <p>gallery</p>
                </div>
                <div class="prev-btns hov">
                    <i class='bx bx-chevron-left' ></i>
                </div>
                <div class="art-stage-img">
                    <img src="assets/img/arts/img8.png" alt="">
                </div>
                <div class="next-btns hov">
                    <i class='bx bx-chevron-right' ></i>
                </div>

            </div>
            <div class="art-details-wrapper">
                <div class="art-header">
                    <div class="btn-fav">
                        <i class='bx bx-star' ></i>
                        <p>Add to Favorites</p>
                    </div>
                    <div class="btn-comment">
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
                    <div class="art-details">
                        <h1>Uncharted Horizon</h1>
                        <p>by byrotek</p>
                    </div>
                    <div class="date-pub">
                        <p>Published: Nov 18, 2021</p>
                    </div>
                </div>

                <div class="socialCounts">
                    <div class="fav-count">
                        <i class='bx bxs-star' ></i>
                        <p><span>480</span> Favorites</p>
                    </div>
                    <div class="comment-count">
                        <i class='bx bxs-comment' ></i>
                        <p><span>25</span> Comments</p>
                    </div>
                    <div class="views-count">
                        <span class="material-icons">visibility</span>
                        <p><span>23K</span> Views</p>
                    </div>
                </div>

                <div class="art-description">
                    <pre>Hello to everyone! I'm glad to introduce my new artwork - Uncharted Horizon. :)  

It is a commercial project of the landscape for Dregn Durant (@ Yasuhiro88ch). He is the absolute owner of the copyright for this work.

This work is available on my Patreon for personal use only, in 4:3-8K and 16:9-8K versions.

On DeviantArt, this artwork is available for personal use only! Distributing this artwork commercially or with any intent for monetary goals is prohibited! Reproducing, editing, copying, publishing, or uploading this artwork in any way without the permission of Dregn Durant (@ Yasuhiro88ch) is forbidden!

Thank you for watching!

                    </pre>
                </div>

                <div class="comment-section">
                    <div class="comment">
                      <div class="profile-img">
                        <i class='bx bxs-user-rectangle' ></i>
                      </div>
                      <div class="input-comment">
                        <textarea class="input-cmnt" type="text" placeholder="Add a new comment"></textarea>
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
              <div class="abyssals-close-btn">
                <button><i class='bx bx-x closeBtn' onclick="abyssalModalClose()"></i></button>
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
  <script src="Assets/js/script.js"></script>

</body>

</html>
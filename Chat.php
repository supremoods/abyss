<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss | Chat</title>
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/chat.css" />
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
  
        <a href="home.html" class="logo">
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
              <a href="topic.html">
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

      <div class="chat-container">
          <div class="chat-list">
            <header class="header-chat">
              <div class="left-side">
                <h1>Chat</h1>
              </div>
              <div class="right-side">
                <i class='bx bxs-edit' ></i>
                <i class='bx bxs-cog' ></i>
              </div>
            </header> 
            
            <div class="chat-title">
              <div>
                <h1>General</h1>
              </div>
            </div>
            <div class="chat-list-container">
              <div class="chat-text">
                <h1>You don't have any chats yet</h1>
              </div>
              <div class="img-chat">
                <img src="Assets/img/undraw_fresh_notification_re_whq4.svg" alt="" srcset="">
              </div>
              <div class="chat-text ">
                <p>Why not reach out to another Abyssals and say hi?</p>
              </div>
              
            </div>
          </div>
          <div class="chat-convo">
            <div class="img-chat">
              <img src="Assets/img/undraw_fresh_notification_re_whq4.svg" alt="" srcset="">
            </div>
          </div>
      </div>
    </main>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="Assets/js/script.js"></script>
</body>

</html>
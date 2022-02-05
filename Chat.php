<?php
  include('phpFunc/dbConnect.php');
  include('phpFunc/session.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss | Chat</title>
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link rel="stylesheet" href="Assets/css/chat.css" />
  <link rel="stylesheet" href="Assets/css/modal.css" />
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>
</head>

<body class="body-root">
  <div id="root">
    <?php 
    include_once('headerContainer.php');
    
    $chatUser = $_GET['userID'];

    $query = "SELECT * FROM abyss_user WHERE id = $chatUser";
    $cmd = mysqli_query($conn, $query);

    $fetch = mysqli_fetch_array($cmd);
    
    ?>

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
              <div class="empty-chatlist">
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
              <!-- <div class="chat_user">
                <div class="status-activity">
                  <i class='bx bxs-circle'></i>
                </div>
                <div class="userName_item">
                  <div class="user_name">
                    <p>Penguin</p>
                  </div>
                  <div class="latestMessage">
                    <pre>You: This is a test message</pre>
                  </div>
                </div>         
              </div> -->

            </div>
          </div>
          <div class="space">
            
          </div>
          <div class="chat-convo-container">

            <div class="img-chat" hidden>
              <img src="Assets/img/undraw_fresh_notification_re_whq4.svg" alt="" srcset="">
            </div>

            <div class="chat-convo-wrapper">
              <div class="chat_convo_header">
                <div class="chat_name">
                  <img src="Assets/img/profile/<?php echo $fetch['profileImage'] ?>" alt="">
                  <div>
                    <p><?php echo $fetch['username'] ?></p>
                    <p>Active now</p>
                  </div>
                </div>
                <div class="convo_close">
                  <i class='bx bx-x' ></i>
                </div>
              </div>
              <div id="chat_convo" class="chat_convo" data-id="<?php echo $fetch['id'] ?>">
              </div>
              <div class="chat_input">
                <textarea name="messageContent" type="text" id="messageContent" cols="30" rows="1" placeholder="Type a message..."></textarea>
                <i class='bx bxl-telegram' id="sendBtn"></i>
              </div>
            </div>

          </div>
      </div>
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
  <script src="Assets/js/chat.js"></script>
  <script src="Assets/js/search.js"></script>
</body>

</html>
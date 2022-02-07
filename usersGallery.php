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
    <title>Abyss | Profile</title>
    <link rel="stylesheet" href="Assets/css/root.css" />
    <link rel="stylesheet" href="Assets/css/gallery.css" />
    <link rel="stylesheet" href="Assets/css/modal.css" />
    <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
</head>

<body class="body-root">
    <div id="root">
        <?php include_once('headerContainer.php');?>
        <?php
            $username = $_GET['username'];
            $sql = "SELECT * FROM art_abyssals LEFT JOIN abyss_user ON abyss_user.id = art_abyssals.id WHERE username = '$username'";
            $cmd = mysqli_query($conn,$sql); 
            $fetch = mysqli_fetch_array($cmd)
            
        ?>

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
                <div class="loadCoverImage">
                    <div class="heading-container"
                        style="background-image: linear-gradient(rgba(248, 122, 221, 0.151), rgba(18, 12, 27, 1)),url(Assets/img/coverProfile/<?php echo $fetch['coverProfile'] ?>)">
                        <div class="profile-name">
                            <div class="user-icon">
                                <div class="user-container">
                                    <img src="./Assets/img/profile/<?php echo $fetch['profileImage'] ?>" alt="">
                                </div>
                            </div>

                            <div id = "users-info" class="users-info">
                                <h1 id="user-name">
                                    <?php echo $fetch['username'] ?>
                                </h1>
                                <?php
                                    $userID = $fetch['id'];
                                    $watcherCount ="SELECT COUNT(watchId) AS watchers FROM abyss_watcher LEFT JOIN abyss_user ON abyss_user.id = abyss_watcher.userID WHERE watchId = $userID ";
                                    $sql = mysqli_query($conn,$watcherCount);
                                    $fetchCount = mysqli_fetch_array($sql);

                                    $AbyssCount ="SELECT COUNT(title) AS abyssals FROM art_abyssals WHERE id = 1";
                                    $sql = mysqli_query($conn,$AbyssCount);
                                    $fetchCountAbyss = mysqli_fetch_array($sql);                   
                                ?>
                                
                                <h1 id="user-status">
                                    <?php echo $fetchCount['watchers']?> Watchers | <?php echo $fetchCountAbyss['abyssals']?> Abyss
                                </h1>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="navigation">
                    <div class="nav-list">
                        <ul>
                            <li><a href="users.php?username=<?php echo $fetch['username'] ?>">Home</a></li>
                            <li><a href="usersGallery.php?username=<?php echo $fetch['username'] ?>">Gallery</a></li>
                            <li><a href="userFavorites.php?username=<?php echo $fetch['username'] ?>">Favourites</a></li>
                            <li><a href="userProfile-post.php?username=<?php echo $fetch['username'] ?>">Posts</a></li>
                        </ul>
                        <div class="addChat" data-id="<?php echo $fetch['id'] ?>" onclick="chatUser(this.dataset.id)">
                            <button class="chatUserbtn">Chat</button>
                        </div>
                        <div class="addWatch">
                        <?php
                            $watchID = $fetch['id'];
                            $query = "SELECT * FROM abyss_watcher WHERE userID= $id AND watchID= $watchID";
                            $cmd = mysqli_query($conn, $query);

                            if(mysqli_num_rows($cmd)>0){
                        ?>
                        
                                <button class="watchBtn"  data-id="<?php echo $watchID?>" onclick="addWatching(this.dataset.id)" >Watching</button>
                        <?php
                            }else{
                        ?>
                            <button class="watchBtn"  data-id="<?php echo $watchID?>" onclick="addWatching(this.dataset.id)" ><i class='bx bx-bookmark-plus' ></i> Watch</button>
                        <?php
                            }
                        ?>
                        </div>
                    </div>
                </div>
                <?php
                     $id = $fetch['id'];
                    $query = "SELECT * FROM art_abyssals WHERE id = $id";
                    $cmd = mysqli_query($conn,$query); 
                ?>
                <div class="gallery-container">
                    <div class="gallery-content">
                        <div class="gallery-box box">
                            <div id="featLoadSubmit">
                            <?php
                                if(mysqli_num_rows($cmd) == 0){
                                    echo   '
                                        <div class="submit-feat">             
                                            <h1>Gallery Coming Soon</h1>
                                            <p>View all of '.$fetch['username'].'\'s Galleries here.</p>
                                        </div>
                                            ';
                                    }
                            ?>

                            <ul class="feature-gallery-wrapper">
                                <?php
                                    if(mysqli_num_rows($cmd) > 0){
                                        while($fetch = mysqli_fetch_array($cmd)){
                                             
                                            $userName = $fetch['id'];  
                                            $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
                                            $cmd2 = mysqli_query($conn,$query2); 
                                            $fetch2 = mysqli_fetch_array($cmd2);

                                            echo '
                                                <li class="feature-gallery-item">
                                                    <img src="assets/img/arts/'.$fetch['abyssal_art'].'" alt="" srcset="">
                                                    <div class="text">
                                                        <div>
                                                            <h3>'.$fetch['title'].'</h3>
                                                            <p class="highlight">'.$fetch['count_comment'].'<span class="material-icons">chat_bubble_outline</span></p>
                                                        </div>
                                                        <div>
                                                            <p>by '.$fetch2['username'].'</p>
                                                            <p class="highlight" data-id="'.$fetch['art_id'].'"  onclick="artFav(this.dataset.id)" >'.$fetch['count_fav'].'<span class="material-icons">star_outline</span></p>
                                                        </div>
                                                    </div>
                                                </li>              
                                             ';
                                             }
                                         }                                         
                                ?>
                            </ul>
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
                                    <li><a href="#"> <img src="Assets/logoWord.png" alt="" style="height: 30px; "></a>
                                    </li>
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
                                <img class="post-art" src="Assets/img/sisu_bg-min.png">
                            </div>
                            <div class="post-title">
                                <textarea type="text" name="post-title" placeholder="Add your title here"></textarea>
                            </div>
                            <div class="add-img-btn">
                                <div onclick="postBtnActive()">
                                    <span><i class='bx bx-image-add'></i>Add Cover Image</span>
                                </div>
                                <input id="add-post-btn" name="post_art_image" type="file" onclick="getPostImage()"
                                    hidden>
                            </div>
                        </div>
                        <div class="post-description">
                            <div class="desc-container">
                                <textarea name="post-desc" id="post-desc" cols="49" rows="10"
                                    placeholder="Start typing your main text here"></textarea>
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
            <form method="post" enctype="multipart/form-data" id="uploadImgGallery">
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
                        <div class = "headerInput">
                        <div>
                            <p>Category</p>                  
                            <select id="category" name="category">
                            <option value="3D">3D</option>
                            <option value="Adoptables">Adoptables</option>
                            <option value="Anime and Manga">Anime and Manga</option>
                            <option value="Anthro">Anthro</option>
                            <option value="Comics">Comics</option>
                            <option value="Digital Art">Digital Art</option>
                            <option value="Drawings and Paintings">Drawings and Paintings</option>
                            <option value="Fan Art">Fan Art</option>
                            <option value="Game Art">Game Art</option>
                            <option value="Science Fiction">Science Fiction</option>
                            <option value="Sculpture">Sculpture</option>
                            <option value="Traditional Arts">Traditional Arts</option>
                            <option value="Tutorials">Tutorials</option>
                            </select>
                        </div>
                        <div class = "featContainer">             
                            <input type="checkbox" name="featArt" value="feat">
                            <label for="featArt">Featured</label>
                        </div>
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
        <div class="modal-upload-profile">
            <form method="post" enctype="multipart/form-data" id="uploadAvatar">
                <div class="modal-upload-wrapper">
                    <div class="modal-header-profile">
                        <div class="title-header">
                            <h1>Upload Avatar</h1>
                        </div>
                        <div class="close-profile-btn" onclick="closeModalProfile()">
                            <i class='bx bx-x'></i>
                        </div>
                    </div>
                    <div class="modal-image-section">
                        <img class="avatar-profile" src="" alt="" srcset="">
                        <div class="uploadbtn-container">
                            <div class="uploadBtn" onclick="profileAvatar()">Choose a file</div>
                            <input id="profileImg" name="profileImg" type="file" onclick="getImage()" hidden>
                        </div>
                    </div>
                    <div class="modal-footer-btn">
                        <div class="cancel-btn" onclick="closeModalProfile()">Cancel</div>
                        <button id="confirmEnable" name="confirmEnable" type="submit"
                            class="confirm-btn">Confirm</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-coverProfile-profile">
            <form method="post" enctype="multipart/form-data" id="coverProfileAvatar">
                <div class="modal-coverProfile-wrapper">
                    <div class="modal-header-profile">
                        <div class="title-header">
                            <h1>Upload Cover Photo</h1>
                        </div>
                        <div class="close-profile-btn" onclick="closeModalCoverProfile()">
                            <i class='bx bx-x'></i>
                        </div>
                    </div>
                    <div class="modal-image-section">
                        <img class="avatar-coverProfile" src="" alt="" srcset="">
                        <div class="coverProfilebtn-container">
                            <div class="coverProfileBtn" onclick="coverProfileAvatar()">Choose a file</div>
                            <input id="coverProfileImg" name="coverProfileImg" type="file" onclick="getCoverImage()"
                                hidden>
                        </div>
                    </div>
                    <div class="modal-footer-btn">
                        <div class="cancel-btn" onclick="closeModalCoverProfile()">Cancel</div>
                        <button id="confirmEnable" name="confirmEnable" type="submit"
                            class="confirm-btn">Confirm</button>
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
    <script src="Assets/js/search.js"></script>
    <script src="Assets/js/users.js"></script>
    <script>
        document.getElementById("confirmEnable").disabled = true;
    </script>
</body>

</html>
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
    <link rel="stylesheet" href="Assets/css/profile.css" />
    <link rel="stylesheet" href="Assets/css/modal.css" />
    <link rel="stylesheet" href="Assets/css/load.css" />
    <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
</head>
</head>

<body class="body-root">
    <div id="root">
        <?php include_once('headerContainer.php');?>

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
                                <div class="upload-profile" onclick="modalProfile()">
                                    <i class="bx bx-refresh"></i>
                                    <span>change</span>
                                </div>
                            </div>

                            <div class="users-info">
                                <h1 id="user-name">
                                    <?php echo $fetch['username'] ?>
                                </h1>
                                <h1 id="user-status">0 Watchers | 1 Page view | 0 Abys </h1>
                            </div>
                        </div>

                        <div class="profile-btn" onclick="modalCoverImage()">
                            <a href="#" class="btn">
                                <i class="bx bx-image-add"></i>
                                <h1 id="cover-text">ADD COVER IMAGE</h1>
                            </a>
                        </div>
                    </div>
                </div>


                <div class="navigation">
                    <div class="nav-list">
                        <ul>
                            <li><a href="profile.php">Home</a></li>
                            <li><a href="gallery.php">Gallery</a></li>
                            <li><a href="favorites.php">Favourites</a></li>
                            <li><a href="profile-post.php">Posts</a></li>
                            <li><a href="#">About</a></li>
                        </ul>
                    </div>
                </div>
                <?php
                    $query = "SELECT * FROM art_abyssals WHERE id = $id AND featured_gallery = 'feat'";
                    $cmd = mysqli_query($conn,$query); 

                ?>
                <div class="profile-col">
                    <div class="profile-content">
                        <div class="left-area">
                            <div class="feature-gallery cards">
                                <div class="feature-gallery-name">
                                    <div class="featTitle">
                                        <h1>Feature Gallery</h1>
                                    </div>
                                    <div id="featLoad">
                                        <?php
                                            if(mysqli_num_rows($cmd) != 0){
                                                echo   '
                                                <div class="featModal" onclick="abyssalModal()">
                                                    <i class="bx bx-image-add"></i>
                                                    <p>ADD</p>
                                                </div>
                                                ';
                                            }
                                        ?>
                                    </div>
                                </div>
                                <div class="gallery-box box">
                                    <div id="featLoadSubmit">
                                    <?php
                                        if(mysqli_num_rows($cmd) == 0){
                                            echo   '
                                            <div class="submit-feat">             
                                                <h1>Submit your first Abyssal!</h1>
                                                <p>Get your art out there for people see.</p>
                                                <div class="featModal" onclick="abyssalModal()">
                                                    <i class="bx bx-image-add"></i>
                                                    <p>Submit</p>
                                                </div>
                                            </div>
                                            ';
                                        }
                                    ?>
                                    </div>
                                    
                                    <ul class="feature-gallery-wrapper ">
                                     
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
                                                        <div class="delete-btn" data-id="'.$fetch['art_id'].'" onclick="removeFav(this.dataset.id)">
                                                            <div>
                                                                <i class="bx bx-trash" ></i>
                                                            </div>
                                                        </div>
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
                                <div class="watching-box">
                                    <h1>Watching</h1>
                                    <div class="list-watching">
                                        <?php
                                            $sql = mysqli_query($conn,"SELECT * FROM abyss_watcher LEFT JOIN abyss_user ON abyss_user.id = abyss_watcher.watchId WHERE userID = $id") or die (mysqli_error());
                                           
                                        ?>

                                        <?php
                                            if(mysqli_num_rows($sql) > 0){
                                                while($fetchList = mysqli_fetch_array($sql)){
                                        ?>
                                            <div class="usersWatched" data-username="<?php echo $fetchList['username'] ?>" onclick="userProfile(this.dataset.username)">
                                                <img class="profileAvatar" src="./Assets/img/profile/<?php echo $fetchList['profileImage'] ?>" alt="">
                                                <h1><?php echo $fetchList['username'] ?></h1>
                                            </div>
                                        <?php 
                                                }
                                            }
                                        
                                        ?>
                                    </div>
                                </div>
                                <div class="watcher-box">
                                    <h1>Watchers</h1>
                                    <div class="list-watcher">
                                        <?php
                                            $sql = mysqli_query($conn,"SELECT * FROM abyss_watcher LEFT JOIN abyss_user ON abyss_user.id = abyss_watcher.userID WHERE watchId = $id") or die (mysqli_error());
                                           
                                        ?>

                                        <?php
                                            if(mysqli_num_rows($sql) > 0){
                                                while($fetchList = mysqli_fetch_array($sql)){
                                        ?>
                                            <div class="usersWatcher" data-username="<?php echo $fetchList['username'] ?>" onclick="userProfile(this.dataset.username)">
                                                <img class="profileAvatar" src="./Assets/img/profile/<?php echo $fetchList['profileImage'] ?>" alt="">
                                                <h1><?php echo $fetchList['username'] ?></h1>
                                            </div>
                                        <?php 
                                                }
                                            }
                                        
                                        ?>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <?php
                                    $query = mysqli_query ($conn, "SELECT * FROM abyss_User WHERE id = '$id' ") or die (mysqli_error());
                                    $fetch = mysqli_fetch_array ($query);                                    
                        ?>  
                        <div class="right-area">
                            <div class="about-user cards">
                                <div class="about-name">
                                    <div class="about-title">
                                        <h1>About<span><?php echo $fetch['username']?></span></h1>
                                    </div>
                                    <div class="about-modal" onclick="aboutModal()">
                                        <i class='bx bx-edit-alt'></i>
                                        <p>EDIT</p>
                                    </div>
                                </div>
                          
                                <div class="about-box box">
                                    <p><?php echo $fetch['checkArtist']?> // <?php echo $fetch['Level']?>  // <?php echo $fetch['Specialty']?></p>

                                    <div class="about-info">
                                        <div>
                                            <i class='bx bxs-cake'></i>
                                            <p><?php echo $fetch['birthDay']?></p>
                                        </div>
                                        <div>
                                            <i class='bx bx-map'></i>
                                            <p><?php echo $fetch['Location']?></p>
                                        </div>
                                    </div>

                                    <p><?php echo $fetch['Pronouns']?></p>
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
        <div class="modal-about">
            <form method="post" enctype="multipart/form-data" id="updateProfile">
                <div class="modal-about-wrapper">
                    <div class="modal-header-about">
                        <div class="title-about">
                            <h1>My Info</h1>
                        </div>
                        <div class="close-about-btn" onclick="aboutModalClose()">
                            <i class='bx bx-x'></i>
                        </div>
                    </div>
                    <div class="about-content">     
                        <div class="header-content">
                            <p class="about-title">About</p>
                        </div>
                        <div class="userName">
                            <input type="text" name="userName" value="<?php echo $fetch['username'] ?>">
                        </div>
                        <div class="about-info-input">
                            <div class="container1">
                                <div class="checkArtist-cont">
                                    <?php 
                                     if($fetch['checkArtist'] == NULL){
                                         echo '
                                            <input type="checkbox" name="checkArtist" id="checkArtist" value="Artist">
                                         ';
                                     }else{
                                        echo '
                                        <input type="checkbox" name="checkArtist" id="checkArtist" value="Artist" checked>
                                        ';
                                     }
                                    ?>
        
                                    <label for="checkArtist">I am an artist</label>
                                </div>
                                <div class="birthday-cont">
                                    <label for="bDay">Birthday</label>
                                    <input type="date" name="birthday" id="birthday" value="<?php echo $fetch['birthDay'] ?>">
                                </div>
                                <div class="level-cont">
                                    <label for="level">Level</label>
                                    <select id="level" name="level" >
                                        <option><?php echo $fetch['Level'] ?></option>   
                                        <option value="none">none</option>
                                        <option value="Student">Student</option>
                                        <option value="Hobbyist">Hobbyist</option>
                                        <option value="Professional">Professional</option>
                                    </select>
                                </div>
                            </div>

                            <div class="container2">
                                <div class="location-cont">
                                    <label for="Location">Location</label>
                                    <select id="Location" name="Location" >
                                        <option><?php echo $fetch['Location'] ?></option>
                                        <option value="Afghanistan">Afghanistan</option>
                                        <option value="Aland Islands">Aland Islands</option>
                                        <option value="Albania">Albania</option>
                                        <option value="Algeria">Algeria</option>
                                        <option value="American Samoa">American Samoa</option>
                                        <option value="Andorra">Andorra</option>
                                        <option value="Angola">Angola</option>
                                        <option value="Anguilla">Anguilla</option>
                                        <option value="Antarctica">Antarctica</option>
                                        <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                        <option value="Argentina">Argentina</option>
                                        <option value="Armenia">Armenia</option>
                                        <option value="Aruba">Aruba</option>
                                        <option value="Australia">Australia</option>
                                        <option value="Austria">Austria</option>
                                        <option value="Azerbaijan">Azerbaijan</option>
                                        <option value="Bahamas">Bahamas</option>
                                        <option value="Bahrain">Bahrain</option>
                                        <option value="Bangladesh">Bangladesh</option>
                                        <option value="Barbados">Barbados</option>
                                        <option value="Belarus">Belarus</option>
                                        <option value="Belgium">Belgium</option>
                                        <option value="Belize">Belize</option>
                                        <option value="Benin">Benin</option>
                                        <option value="Bermuda">Bermuda</option>
                                        <option value="Bhutan">Bhutan</option>
                                        <option value="Bolivia">Bolivia</option>
                                        <option value="Bonaire, Sint Eustatius and Saba">Bonaire, Sint Eustatius and Saba
                                        </option>
                                        <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                        <option value="Botswana">Botswana</option>
                                        <option value="Bouvet Island">Bouvet Island</option>
                                        <option value="Brazil">Brazil</option>
                                        <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                        <option value="Brunei Darussalam">Brunei Darussalam</option>
                                        <option value="Bulgaria">Bulgaria</option>
                                        <option value="Burkina Faso">Burkina Faso</option>
                                        <option value="Burundi">Burundi</option>
                                        <option value="Cambodia">Cambodia</option>
                                        <option value="Cameroon">Cameroon</option>
                                        <option value="Canada">Canada</option>
                                        <option value="Cape Verde">Cape Verde</option>
                                        <option value="Cayman Islands">Cayman Islands</option>
                                        <option value="Central African Republic">Central African Republic</option>
                                        <option value="Chad">Chad</option>
                                        <option value="Chile">Chile</option>
                                        <option value="China">China</option>
                                        <option value="Christmas Island">Christmas Island</option>
                                        <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                        <option value="Colombia">Colombia</option>
                                        <option value="Comoros">Comoros</option>
                                        <option value="Congo">Congo</option>
                                        <option value="Congo, Democratic Republic of the Congo">Congo, Democratic Republic of
                                            the Congo</option>
                                        <option value="Cook Islands">Cook Islands</option>
                                        <option value="Costa Rica">Costa Rica</option>
                                        <option value="Cote D'Ivoire">Cote D'Ivoire</option>
                                        <option value="Croatia">Croatia</option>
                                        <option value="Cuba">Cuba</option>
                                        <option value="Curacao">Curacao</option>
                                        <option value="Cyprus">Cyprus</option>
                                        <option value="Czech Republic">Czech Republic</option>
                                        <option value="Denmark">Denmark</option>
                                        <option value="Djibouti">Djibouti</option>
                                        <option value="Dominica">Dominica</option>
                                        <option value="Dominican Republic">Dominican Republic</option>
                                        <option value="Ecuador">Ecuador</option>
                                        <option value="Egypt">Egypt</option>
                                        <option value="El Salvador">El Salvador</option>
                                        <option value="Equatorial Guinea">Equatorial Guinea</option>
                                        <option value="Eritrea">Eritrea</option>
                                        <option value="Estonia">Estonia</option>
                                        <option value="Ethiopia">Ethiopia</option>
                                        <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                        <option value="Faroe Islands">Faroe Islands</option>
                                        <option value="Fiji">Fiji</option>
                                        <option value="Finland">Finland</option>
                                        <option value="France">France</option>
                                        <option value="French Guiana">French Guiana</option>
                                        <option value="French Polynesia">French Polynesia</option>
                                        <option value="French Southern Territories">French Southern Territories</option>
                                        <option value="Gabon">Gabon</option>
                                        <option value="Gambia">Gambia</option>
                                        <option value="Georgia">Georgia</option>
                                        <option value="Germany">Germany</option>
                                        <option value="Ghana">Ghana</option>
                                        <option value="Gibraltar">Gibraltar</option>
                                        <option value="Greece">Greece</option>
                                        <option value="Greenland">Greenland</option>
                                        <option value="Grenada">Grenada</option>
                                        <option value="Guadeloupe">Guadeloupe</option>
                                        <option value="Guam">Guam</option>
                                        <option value="Guatemala">Guatemala</option>
                                        <option value="Guernsey">Guernsey</option>
                                        <option value="Guinea">Guinea</option>
                                        <option value="Guinea-Bissau">Guinea-Bissau</option>
                                        <option value="Guyana">Guyana</option>
                                        <option value="Haiti">Haiti</option>
                                        <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands
                                        </option>
                                        <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                        <option value="Honduras">Honduras</option>
                                        <option value="Hong Kong">Hong Kong</option>
                                        <option value="Hungary">Hungary</option>
                                        <option value="Iceland">Iceland</option>
                                        <option value="India">India</option>
                                        <option value="Indonesia">Indonesia</option>
                                        <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                        <option value="Iraq">Iraq</option>
                                        <option value="Ireland">Ireland</option>
                                        <option value="Isle of Man">Isle of Man</option>
                                        <option value="Israel">Israel</option>
                                        <option value="Italy">Italy</option>
                                        <option value="Jamaica">Jamaica</option>
                                        <option value="Japan">Japan</option>
                                        <option value="Jersey">Jersey</option>
                                        <option value="Jordan">Jordan</option>
                                        <option value="Kazakhstan">Kazakhstan</option>
                                        <option value="Kenya">Kenya</option>
                                        <option value="Kiribati">Kiribati</option>
                                        <option value="Korea, Democratic People's Republic of">Korea, Democratic People's
                                            Republic of</option>
                                        <option value="Korea, Republic of">Korea, Republic of</option>
                                        <option value="Kosovo">Kosovo</option>
                                        <option value="Kuwait">Kuwait</option>
                                        <option value="Kyrgyzstan">Kyrgyzstan</option>
                                        <option value="Lao People's Democratic Republic">Lao People's Democratic Republic
                                        </option>
                                        <option value="Latvia">Latvia</option>
                                        <option value="Lebanon">Lebanon</option>
                                        <option value="Lesotho">Lesotho</option>
                                        <option value="Liberia">Liberia</option>
                                        <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                        <option value="Liechtenstein">Liechtenstein</option>
                                        <option value="Lithuania">Lithuania</option>
                                        <option value="Luxembourg">Luxembourg</option>
                                        <option value="Macao">Macao</option>
                                        <option value="Macedonia, the Former Yugoslav Republic of">Macedonia, the Former
                                            Yugoslav Republic of</option>
                                        <option value="Madagascar">Madagascar</option>
                                        <option value="Malawi">Malawi</option>
                                        <option value="Malaysia">Malaysia</option>
                                        <option value="Maldives">Maldives</option>
                                        <option value="Mali">Mali</option>
                                        <option value="Malta">Malta</option>
                                        <option value="Marshall Islands">Marshall Islands</option>
                                        <option value="Martinique">Martinique</option>
                                        <option value="Mauritania">Mauritania</option>
                                        <option value="Mauritius">Mauritius</option>
                                        <option value="Mayotte">Mayotte</option>
                                        <option value="Mexico">Mexico</option>
                                        <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                                        <option value="Moldova, Republic of">Moldova, Republic of</option>
                                        <option value="Monaco">Monaco</option>
                                        <option value="Mongolia">Mongolia</option>
                                        <option value="Montenegro">Montenegro</option>
                                        <option value="Montserrat">Montserrat</option>
                                        <option value="Morocco">Morocco</option>
                                        <option value="Mozambique">Mozambique</option>
                                        <option value="Myanmar">Myanmar</option>
                                        <option value="Namibia">Namibia</option>
                                        <option value="Nauru">Nauru</option>
                                        <option value="Nepal">Nepal</option>
                                        <option value="Netherlands">Netherlands</option>
                                        <option value="Netherlands Antilles">Netherlands Antilles</option>
                                        <option value="New Caledonia">New Caledonia</option>
                                        <option value="New Zealand">New Zealand</option>
                                        <option value="Nicaragua">Nicaragua</option>
                                        <option value="Niger">Niger</option>
                                        <option value="Nigeria">Nigeria</option>
                                        <option value="Niue">Niue</option>
                                        <option value="Norfolk Island">Norfolk Island</option>
                                        <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                        <option value="Norway">Norway</option>
                                        <option value="Oman">Oman</option>
                                        <option value="Pakistan">Pakistan</option>
                                        <option value="Palau">Palau</option>
                                        <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                                        <option value="Panama">Panama</option>
                                        <option value="Papua New Guinea">Papua New Guinea</option>
                                        <option value="Paraguay">Paraguay</option>
                                        <option value="Peru">Peru</option>
                                        <option value="Philippines">Philippines</option>
                                        <option value="Pitcairn">Pitcairn</option>
                                        <option value="Poland">Poland</option>
                                        <option value="Portugal">Portugal</option>
                                        <option value="Puerto Rico">Puerto Rico</option>
                                        <option value="Qatar">Qatar</option>
                                        <option value="Reunion">Reunion</option>
                                        <option value="Romania">Romania</option>
                                        <option value="Russian Federation">Russian Federation</option>
                                        <option value="Rwanda">Rwanda</option>
                                        <option value="Saint Barthelemy">Saint Barthelemy</option>
                                        <option value="Saint Helena">Saint Helena</option>
                                        <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                        <option value="Saint Lucia">Saint Lucia</option>
                                        <option value="Saint Martin">Saint Martin</option>
                                        <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                        <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines
                                        </option>
                                        <option value="Samoa">Samoa</option>
                                        <option value="San Marino">San Marino</option>
                                        <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                        <option value="Saudi Arabia">Saudi Arabia</option>
                                        <option value="Senegal">Senegal</option>
                                        <option value="Serbia">Serbia</option>
                                        <option value="Serbia and Montenegro">Serbia and Montenegro</option>
                                        <option value="Seychelles">Seychelles</option>
                                        <option value="Sierra Leone">Sierra Leone</option>
                                        <option value="Singapore">Singapore</option>
                                        <option value="Sint Maarten">Sint Maarten</option>
                                        <option value="Slovakia">Slovakia</option>
                                        <option value="Slovenia">Slovenia</option>
                                        <option value="Solomon Islands">Solomon Islands</option>
                                        <option value="Somalia">Somalia</option>
                                        <option value="South Africa">South Africa</option>
                                        <option value="South Georgia and the South Sandwich Islands">South Georgia and the South
                                            Sandwich Islands</option>
                                        <option value="South Sudan">South Sudan</option>
                                        <option value="Spain">Spain</option>
                                        <option value="Sri Lanka">Sri Lanka</option>
                                        <option value="Sudan">Sudan</option>
                                        <option value="Suriname">Suriname</option>
                                        <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                        <option value="Swaziland">Swaziland</option>
                                        <option value="Sweden">Sweden</option>
                                        <option value="Switzerland">Switzerland</option>
                                        <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                        <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                        <option value="Tajikistan">Tajikistan</option>
                                        <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                        <option value="Thailand">Thailand</option>
                                        <option value="Timor-Leste">Timor-Leste</option>
                                        <option value="Togo">Togo</option>
                                        <option value="Tokelau">Tokelau</option>
                                        <option value="Tonga">Tonga</option>
                                        <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                        <option value="Tunisia">Tunisia</option>
                                        <option value="Turkey">Turkey</option>
                                        <option value="Turkmenistan">Turkmenistan</option>
                                        <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                        <option value="Tuvalu">Tuvalu</option>
                                        <option value="Uganda">Uganda</option>
                                        <option value="Ukraine">Ukraine</option>
                                        <option value="United Arab Emirates">United Arab Emirates</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option value="United States">United States</option>
                                        <option value="United States Minor Outlying Islands">United States Minor Outlying
                                            Islands</option>
                                        <option value="Uruguay">Uruguay</option>
                                        <option value="Uzbekistan">Uzbekistan</option>
                                        <option value="Vanuatu">Vanuatu</option>
                                        <option value="Venezuela">Venezuela</option>
                                        <option value="Viet Nam">Viet Nam</option>
                                        <option value="Virgin Islands, British">Virgin Islands, British</option>
                                        <option value="Virgin Islands, U.s.">Virgin Islands, U.s.</option>
                                        <option value="Wallis and Futuna">Wallis and Futuna</option>
                                        <option value="Western Sahara">Western Sahara</option>
                                        <option value="Yemen">Yemen</option>
                                        <option value="Zambia">Zambia</option>
                                        <option value="Zimbabwe">Zimbabwe</option>
                                    </select>
                                </div>
                                <div class="specialty-cont">
                                    <label for="specialty">Specialty</label>
                                    <select id="specialty" name="specialty" >
                                        <option><?php echo $fetch['Specialty'] ?></option>
                                        <option value="Artisan Crafts">Artisan Crafts</option>
                                        <option value="Digital Art">Digital Art</option>
                                        <option value="Film & Animation">Film & Animation</option>
                                        <option value="Literature">Literature</option>
                                        <option value="Traditional Art">Traditional Art</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                                <div class="pronouns-cont">
                                    <label for="pronouns">Pronouns</label>
                                    <select id="pronouns" name="pronouns">
                                        <option><?php echo $fetch['Pronouns'] ?></option>
                                        <option value="He/Him">He / Him</option>
                                        <option value="She/Her">She / Her</option>
                                        <option value="They/Them">They / Them</option>
                                    </select>
                                </div>
                            </div>
                            
                        </div>

                    </div>

                    <div class="footer-btn-save">
                        <div class="cancel-btn" onclick="aboutModalClose()">Cancel</div>
                        <button id="confirmEnable" name="confirmEnable" type="submit" class="confirm-btn">Save</button>
                    </div>
                </div>
            </form>
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
    <script src="Assets/js/search.js"></script>

</body>

</html>
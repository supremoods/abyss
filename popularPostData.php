<?php
    include('phpFunc/dbConnect.php');
    $query = "SELECT * FROM abyss_post ORDER BY count_comment ASC";

    $cmd = mysqli_query($conn,$query); 

    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    $id = (int) $_SESSION['id'];

    $queryProfile = "SELECT * FROM abyss_user WHERE id = $id";
    $cmdProfile = mysqli_query($conn,$queryProfile); 
    $fetchImage = mysqli_fetch_array($cmdProfile);
    if(mysqli_num_rows($cmd) > 0){
        while($fetch = mysqli_fetch_array($cmd)){
            $userName = $fetch['id'];  
            
            $query2 = "SELECT * FROM abyss_user WHERE id = '$userName'";
            $cmd2 = mysqli_query($conn,$query2); 
            $fetch2 = mysqli_fetch_array($cmd2);
                            
?>
<div class="post-data">
    <div class="post-header">
        <div class="profile-img">
            <img src="Assets/img/profile/<?php echo $fetch2['profileImage']?>" style="height:50px; width:50px; margin-right:2px;" alt="">
        </div>
        <div class="post-name-time">
            <div class="post-name">
                <p>
                    <?php echo $fetch2['username']?>
                </p>
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
        <img src="./Assets/img/post/<?php echo $fetch['cover_image']?>">
        <div class="title">
            <h1>
                <?php echo $fetch['title'] ?>
            </h1>
        </div>
    </div>

    <div class="post-description-cc">
        <pre><?php echo $fetch['post_description'] ?></pre>
    </div>

    <div class="post-btns">
        <div class="btns-left">

        </div>

        <div class="counts-right">
            <div class="counts">
                <div id="<?php echo $fetch['post_id'] ?>"  class="count-comment">
                    <span class="material-icons">chat_bubble</span>
                    <p>
                        <?php echo $fetch['count_comment']?>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="comment-section"  data-id="<?php echo $fetch['post_id'] ?>" >
        <div class="comment">
            <div class="profile-img">
                <img src="./Assets/img/profile/<?php echo $fetchImage['profileImage'] ?>"
                    style="height:50px; width:50px; margin-right:10px;" alt="">
            </div>
            <div class="input-comment" id="input-comment">
                <textarea id="userComment_<?php echo $fetch['post_id'] ?>" name="userComment<?php echo $fetch['post_id'] ?>" data-id="<?php echo $fetch['post_id'] ?>"
                    class="input-cmnt" type="text" placeholder="Add a new comment"></textarea>
                <div id="loadComment_<?php echo $fetch['post_id'] ?>" class="user-comment-wrapper">
                   
                    <?php
                        $postID = $fetch['post_id'];
                        $query = "SELECT * FROM abyss_post_comment WHERE post_id = $postID";
                        $cmdComment = mysqli_query($conn, $query);

                        if(mysqli_num_rows($cmdComment) > 0){
                            while($fetch = mysqli_fetch_array($cmdComment)){
                                $user =  $fetch['id']; 
                                $queryUser = "SELECT * FROM abyss_user where id = $user ";
                                $cmdUser = mysqli_query($conn, $queryUser);
                                $fetchImage = mysqli_fetch_array($cmdUser);
                                echo '
                                    <div class="user-comment">
                                        <img src="Assets/img/profile/'.$fetchImage['profileImage'].'" style="height:50px; width:50px; margin-right:10px;" alt="">
                                        <pre>'.$fetch['comment'].'</pre>
                                    </div>
                                ';
                            }
                        }
                    ?>

                </div>
            </div>
        </div>
    </div>
</div>
<?php
        }
    }
?>
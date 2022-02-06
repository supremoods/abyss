<?php
        include('dbConnect.php');
        session_start();
        $id = (int) $_SESSION['id'];

        $query = "SELECT * FROM messages WHERE outgoing_msg_id = $id GROUP BY incoming_msg_id ORDER BY msg_id DESC;  ";

        $cmd = mysqli_query($conn, $query);

        
if(mysqli_num_rows($cmd) > 0){
    while($fetch = mysqli_fetch_assoc($cmd)){
        $outgoing = $fetch['incoming_msg_id'];
        $incoming =  $id;
        $querylast = "SELECT * FROM messages LEFT JOIN abyss_user ON abyss_user.id = messages.incoming_msg_id
        WHERE (outgoing_msg_id = {$outgoing} AND incoming_msg_id = {$incoming})
        OR (outgoing_msg_id = {$incoming} AND incoming_msg_id = {$outgoing}) ORDER BY msg_id DESC LIMIT 1";
    
        $cmdLast = mysqli_query($conn, $querylast);
        $fetchUser = mysqli_fetch_assoc($cmdLast);
        if($incoming == $fetchUser['incoming_msg_id']){
            $outgoing = $fetch['incoming_msg_id'];
            $incoming =  $id;
            $querylast = "SELECT * FROM messages LEFT JOIN abyss_user ON abyss_user.id = messages.outgoing_msg_id
            WHERE (outgoing_msg_id = {$outgoing} AND incoming_msg_id = {$incoming})
            OR (outgoing_msg_id = {$incoming} AND incoming_msg_id = {$outgoing}) ORDER BY msg_id DESC LIMIT 1";
        
            $cmdLast = mysqli_query($conn, $querylast);
            $fetchUser = mysqli_fetch_assoc($cmdLast);  
        }

        if($fetchUser['outgoing_msg_id'] === $outgoing){
           if($fetchUser['Status'] == "online"){
                echo'
                <div class="chat_user" data-id="'.$fetchUser['id'].'" onclick="chatUser(this.dataset.id)">
                    <div class="status-activity active">
                        <i class="bx bxs-circle"></i>
                    </div>
                    <div class="userName_item">
                        <div class="user_name">
                        <p>'.$fetchUser['username'].'</p>
                        </div>
                        <div class="latestMessage">
                        <pre>'.$fetchUser['msg'].'</pre>
                        </div>
                    </div>         
                </div>

                ';
            }else{
                echo'
                <div class="chat_user" data-id="'.$fetchUser['id'].'" onclick="chatUser(this.dataset.id)">
                    <div class="status-activity">
                        <i class="bx bxs-circle"></i>
                    </div>
                    <div class="userName_item">
                        <div class="user_name">
                        <p>'.$fetchUser['username'].'</p>
                        </div>
                        <div class="latestMessage">
                        <pre>'.$fetchUser['msg'].'</pre>
                        </div>
                    </div>         
                </div>

                ';
            }   
           
        }else{
            if($fetchUser['Status'] == "online"){
                echo'
                    <div class="chat_user"  data-id="'.$fetchUser['id'].'" onclick="chatUser(this.dataset.id)">
                        <div class="status-activity active">
                            <i class="bx bxs-circle"></i>
                        </div>
                        <div class="userName_item">
                            <div class="user_name">
                            <p>'.$fetchUser['username'].'</p>
                            </div>
                            <div class="latestMessage">
                            <pre>You: '.$fetchUser['msg'].'</pre>
                            </div>
                        </div>         
                    </div>

                ';
            }else{
                echo'
                    <div class="chat_user"  data-id="'.$fetchUser['id'].'" onclick="chatUser(this.dataset.id)">
                        <div class="status-activity">
                            <i class="bx bxs-circle"></i>
                        </div>
                        <div class="userName_item">
                            <div class="user_name">
                            <p>'.$fetchUser['username'].'</p>
                            </div>
                            <div class="latestMessage">
                            <pre>You: '.$fetchUser['msg'].'</pre>
                            </div>
                        </div>         
                    </div>

                ';
            }
            
        }

    }
}else{
    echo'
    <div class="empty-chatlist">
        <div class="chat-text">
            <h1>You don\'t have any chats yet</h1>
        </div>
        <div class="img-chat">
            <img src="Assets/img/undraw_fresh_notification_re_whq4.svg" alt="" srcset="">
        </div>
        <div class="chat-text ">
            <p>Why not reach out to another Abyssals and say hi?</p>
        </div>
    </div>
    ';
}

?>
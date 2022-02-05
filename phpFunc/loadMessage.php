<?php
 include('dbConnect.php');
 session_start();
$outgoing = $_SESSION['id'];

if (isset($_POST["userID"])) {
    $incoming = $_POST["userID"];
}


$output = "";

$query = "SELECT * FROM messages LEFT JOIN abyss_user ON abyss_user.id = messages.outgoing_msg_id
WHERE (outgoing_msg_id = {$outgoing} AND incoming_msg_id = {$incoming})
OR (outgoing_msg_id = {$incoming} AND incoming_msg_id = {$outgoing}) ORDER BY msg_id";

$cmd = mysqli_query($conn, $query);

if(mysqli_num_rows($cmd) > 0){
    while($row = mysqli_fetch_assoc($cmd)){
        if($row['outgoing_msg_id'] === $outgoing){
            $output .= '
                <div class="chat outgoing">
                    <div class="details">
                        <p>'. $row['msg'] .'</p>
                    </div>
                </div>
               
            ';
        }else{
            $output .= '
                <div class="chat incoming">
                    <img src="Assets/img/profile/'.$row['profileImage'].'" alt="">
                        <div class="details">
                            <p>'. $row['msg'] .'</p>
                    </div>
                </div>
                
            ';
        }
    }
}
echo $output;


?>
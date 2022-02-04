<?php 
    include('dbConnect.php');

    session_start();
    $message = $_REQUEST['outgoing_message'];
    $outgoing = $_SESSION['id'];

    if($outgoing == 1){
        $incoming = 2;
    }else{
        $incoming = 1;
    }

    $query = "INSERT INTO messages(incoming_msg_id,outgoing_msg_id,msg) VALUES($incoming, $outgoing, '$message')"; 
    $cmd = mysqli_query($conn,$query);


   
?>
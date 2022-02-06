<?php 
    include('dbConnect.php');

    session_start();
    $message = mysqli_real_escape_string($conn,$_REQUEST['outgoing_message']);
    $outgoing = $_SESSION['id'];
    $incoming =  $_REQUEST['userID'];


    $query = "INSERT INTO messages(incoming_msg_id,outgoing_msg_id,msg) VALUES($incoming, $outgoing, '$message')"; 
    $cmd = mysqli_query($conn,$query);



   
?>
<?php 
    include('dbConnect.php');

    session_start();

    $username =  $_REQUEST['userChat'];


     
    $query = "SELECT * FROM abyss_user WHERE username = '$username'";
    $cmd = mysqli_query($conn, $query);

    if(mysqli_num_rows($cmd) > 0){
        $fetch = mysqli_fetch_array($cmd);

        $id = $fetch['id'];
    
        echo"
            <script>  window.location.href = 'Chat.php?userID='+$id </script>
        ";
    
    }else{
        echo"
            <script> alert('no result found') </script>
            <script>  window.location.href = 'Chat.php' </script>
        ";
    
    }
    



   
?>
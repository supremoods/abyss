<?php
    include('dbConnect.php');

    if(isset($_POST['submit'])){
        if(!empty($_POST['username']) && !empty($_POST['password'])){
            $username = $_POST['username'];
            $password = $_POST['password'];

            $query = "SELECT * FROM abyss_User WHERE username = '$username' AND password = '$password'";

            $cmd = mysqli_query($conn,$query);
            $row = mysqli_fetch_array($cmd);
            $count = mysqli_num_rows($cmd);

            if($count == 1){
                 session_start();
                 $_SESSION['id'] = $row['id'];

                 $userId =  $_SESSION['id'];

                 $query = "UPDATE abyss_User SET Status = 'online' WHERE id = '$userId'";

                 $cmd = mysqli_query($conn,$query);

                 header ("location:home.php");
            }else{
                echo '
                 login not successfully
                ';
                exit();
            }

        }else{
            echo "all fields required!";
            exit();
        }
          
    }
?>

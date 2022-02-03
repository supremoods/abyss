<?php
    include('dbConnect.php');

    if(isset($_POST['submit'])){
        if(!empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['password'])){
            $username = $_POST['username'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            $checkUsername = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM `abyss_User` WHERE `username` = '$username'"));
            $checkEmail = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM `abyss_User` WHERE `email` = '$email'"));

            $query =  "INSERT INTO abyss_User(id,username,email,password,profileImage) VALUES(null,'$username','$email','$password','avatar.png')";

            $cmd = mysqli_query($conn,$query) or die(mysqli_error());
                
            if($cmd){
                echo '
                    <div class="modal-success">
                        <div class="container">
                        </div>
                    </div>
                ';
                header ("location:login.php");
            }else{
                 echo '
                 <script>
                     console.log("registration not successful");
                 </script>
             ';
            exit();
            }

        }else{
            echo "all fields required!";
            exit();
        }
          
    }
    
?>

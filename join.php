<?php
    include('phpFunc/session.php');
    joinSession();
    include('phpFunc/joinFunc.php');
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
        <link rel="stylesheet" href="Assets/css/auth.css">
        <link rel="stylesheet" href="Assets/css/root.css">
        <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
        <title>Abyss | Join</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="container-fluid">
                <div class="left-content" style="background-image:url(Assets/img/visions_by_rossdraws_ddl1im1.jpg)">
                    <div class="content">
                        <div>
                            <h1 class="hD1">Join the largest art community in
                                the world</h1>
                                
                            <p class="pD1">Explore and discover art, become a
                                better artist, connect with others over mutual
                                hobbies, or buy and sell work – you can do it
                                all here.</p>
                        </div>
                    </div>
                </div>
                <div class="right-content">
                    <button class="_3Z-fe V1uX0 ">
                        <span class="material-icons">
                            close
                        </span>
                    </button>
                    <div class="content">
                        <h2 class="auth_title">Join</h2>
                        <p class="_20eiF">Already a member <a href="login.php">Log In</a></p>
                        <div class="form-container">
                            <form  method="post" class="form-content">
                                <div>
                                    <label class="label" for="username" id="username-label">
                                        <span class="textLable">Username</span>
                                    </label>
                                    <div class="fd-cont">
                                        <input type="text" class="fd" id="username" name="username" value="" required>
                                    </div>
                                    <span class="space"></span>
                                </div>
                                <div>
                                    <label class="label" for="email" id="email-label">
                                        <span class="textLable">Add your email
                                        </span></label>
                                    <div class="fd-cont">
                                        <input type="email" class="fd" id="email" name="email" pattern=".+@gmail\.com" size="30" value="" required>
                                    </div>
                                    <span class="space"></span>
                                </div>
                                <div>
                                    <label class="label" for="email"
                                        id="email-label">
                                        <span class="textLable">Confirm email
                                        </span></label>
                                    <div class="fd-cont">
                                        <input type="email" class="fd" id="email" pattern=".+@gmail\.com" size="30" value="" required>
                                    </div>
                                    <span class="space"></span>
                                </div>

                                <div>
                                    <label class="label" for="email" id="email-label">
                                        <span class="textLable">Password</span>
                                    </label>
                                    <div class="fd-cont">
                                        <input type="Password" class="fd" id="password" name="password" value="">
                                    </div>
                                    <span class="space"></span>
                                </div>

                                <button class="btn-auth arTRL _3S7Tn" aria-label="Join btn" id="loginbutton" name="submit" type="submit">
                                    <span class="Kcz-t">Join</span>
                                </button>                    
                            </form>
                        </div>
                        <div class="_7INSi dW6kG">By clicking Join, I confirm that I have read and agree to the Abyss
                            <a href="#">Terms of Service</a>,  
                            <a href="#">Privacy Policy</a>, 
                            and to receive emails and updates.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="Assets/js/auth.js"></script>
    </body>
</html>
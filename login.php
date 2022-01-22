<?php
    include('phpFunc/session.php');
    loginSession();
    include('phpFunc/loginFunc.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="Assets/css/auth.css">
    <link rel="stylesheet" href="Assets/css/root.css">
    <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
    <title>Abyss | Login</title>
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
                    <h2 class="auth_title">Log In</h2>
                    <p class="_20eiF">Become a member <a href="join.php">Join</a></p>
                    <div class="form-container">

                        <form method="post" class="form-content">
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
                                <label class="label" for="password" id="password-label">
                                    <span class="textLable">Password</span>
                                </label>
                                <div class="fd-cont">
                                    <input type="password" class="fd" id="password" name="password" value="" required>
                                </div>
                                <span class="space"></span>
                            </div>
                            <div class="_2JMYe zpWPv">
                                <div class="_2tmkX">
                                    <span class="checkbox">
                                        <input type="checkbox" name="remember" checked=""aria-labelledby="remember-label" required>
                                    </span>
                                    <span class="textLable">Keep me
                                        logged in</span>
                                </div>
                                <span class="space"></span>
                            </div>
                            <div class="forgot-Container">
                                <button class="btn-auth arTRL _3S7Tn" aria-label="Log In" id="loginbutton" name="submit" type="submit">
                                    <span class="Kcz-t">Log In</span>
                                </button>
                                <a class="_1upUc" href="/users/forgot?kind=password">Forgot
                                    your username or password?</a>
                            </div>
                        </form>
                    </div>
                    <div class="_7INSi krrft">By clicking Log In, I confirm that I have read and agree to the Abyss <a
                            href="https://www.deviantart.com/about/policy/service">Terms of Service</a>, <a
                            href="https://www.deviantart.com/about/policy/privacy">Privacy Policy</a>, and to receive
                        emails and updates.</div>
                </div>
            </div>
        </div>
    </div>
    <script src="Assets/js/auth.js"></script>
</body>

</html>
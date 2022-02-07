<?php
  include('phpFunc/session.php');
  homeSession();
  include('phpFunc/dbConnect.php');
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Abyss | Privacy Policy</title>
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/Privacy.css" />
  <link rel="shortcut icon" href="Assets/logo.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
</head>
</head>

<body class="body-root">
    <div id="root">
      <div class="header-container">
        <div class="header">
          <button class="deck-btn" onclick="sidebarNav()">
            <span class="material-icons"> grid_view </span>
          </button>
    
          <a href="home.php" class="logo">
            <div>
            <img src="Assets/logoWord.png" alt="" style="height: 30px; ">
          </div>
          </a>
    
          <div class="nav-wrapper">
            <div class="search-sec">
              <div>
                <input type="text" name="" id="" placeholder="Search & Discover" />
                <span class="material-icons"> search </span>
              </div>
            </div>
  
            <div class="navlinks">
              <a href="Chat.php" class="join-link">
                  <span class="material-icons">
                      textsms
                  </span>
              </a>
              <a href="#" class="login-link">
                  <span class="material-icons">
                      notifications
                  </span>
              </a>
            </div>

            <?php
                  $id = (int) $_SESSION['id'];

                  $query = mysqli_query ($conn, "SELECT * FROM abyss_User WHERE id = '$id' ") or die (mysqli_error());
                  $fetch = mysqli_fetch_array ($query);
          ?>
          <div class="avatar-sec">
            <img src="Assets/img/profile/<?php echo $fetch['profileImage'] ?>" style="height:40px; width:40px;" alt="">
            <div class="account-links">
              <ul class="link-container">
                <h1><?php echo $fetch['username'] ?></h1>
                <li><a href="profile.php">Profile</a></li>
                <li><a href="gallery.php">Gallery</a></li>
                <li><a href="favorites.php">Favourites</a></li>
                <li><a href="profile-post.php">Posts</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="phpFunc/logout.php">Logout</a></li>
              </ul>
            </div>
          </div>

            <div class="submit-btn">
                <p>Submit</p>
                <div class="submit-container">
                  <div class="submit-links">
                    <button class="btn-abyssals" onclick="abyssalModal()">Abyssals</button>
                    <button class="btn-status" onclick="statusModal()">Status Update</button>
                  </div>
                </div>
              </div>

        </div>
      </div>
    </div>


    <main class="container">
      <!-- sidebar navigation -->
      <div class="sidebar-container">
        <div class="sidebar">
          <ul>
            <li class="list active">
              <a href="#">
                <span class="material-icons">home</span>
                <span class="title">Home</span>
              </a>
            </li>
            <li class="list">
              <a href="#">
                <span class="material-icons">category</span>
                <span class="title">Topics</span>
              </a>
            </li>
            <li class="list">
              <a href="popular.html">
                <span class="material-icons">whatshot</span>
                <span class="title">Popular</span>
              </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- main content -->
      <div class="main-content">
         <div class="container">
             <div class="wrapper">
                 <div class="content">

                    <pre>

<span id="intro">Privacy Policy</span>
<a  class="abyss-link" href="//localhost/abyss-with-db/home.php.">Abyss</a> respects your privacy and is fully committed to protecting your personal information and using it properly and in compliance with data privacy laws. 

This Privacy Policy applies to our web sites, <a class="abyss-link"href="http://localhost/abyss-with-db/home.php.">Abyss</a> This Privacy Policy explains what information we (together with our affiliated companies worldwide) collect and use pertaining to each of our Account holders and non-Account holders (such as Site visitors) through the Sites, how we use that information, and what choices you have with respect to the information we collect about you. The Sites and our services available via the Sites are collectively called the "Services". 

Please take a few moments to read this Privacy Policy before you access or use the Services. By using or accessing the Abyss Sites, you acknowledge that you have read and fully understood this Privacy Policy and our Terms of Service and that they both apply to your use of the Services. If you do not read and fully understand this Privacy Policy, please do not use the Sites or Services. This Privacy Policy is not intended to override the terms of any contract you have with us, nor any rights you might have under applicable data privacy laws. Where you have read this policy but would like further clarification, please contact us at help@abyss.com. 

<span class="TOS">1. Things you and others do and provide. </span>

Information and content you provide. We collect the content, communications, and other information you provide when you use our Products, including when you sign up for an account, create or share content, and message or communicate with others. This can include information in or about the content you provide, such as the location of a photo or the date a file was created. It can also include what you see through features we provide, such as our camera, so we can do things like suggest masks and filters that you might like, or give you tips on using camera formats. Our systems automatically process content and communications you and others provide to analyze context and what is in them for the purposes described below. Learn more about how you can control who can see the things you share. 
    
Data with special protections: You can choose to provide information in your Abyss profile fields or who you are "interested in," or your health. This and other information (such as racial or ethnic origin, philosophical beliefs, or trade union membership) could be subject to special protections under the laws of your country. 

Your usage. We collect information about how you use our Products, such as the types of content you view or engage with; the features you use; the actions you take; the people or accounts you interact with; and the time, frequency, and duration of your activities. For example, we log when you are using and have last used our Products, and what posts, videos, and other content you view on our Products. We also collect information about how you use features like our camera. 

<span class="TOS">2. How do we use such information?</span>

We use your information for the following purposes: to provide and operate the Services; to enhance our data security and fraud prevention capabilities; To create aggregated statistical data and other aggregated and/or inferred information, which we may use to provide and improve our respective Services; to customize advertising and content available on the Abyss Sites, to send you service-related notices and promotional information about products and services that may be of interest to you and/or to conduct research for internal purposes; to help us in updating, expanding and analyzing our records to identify new Users; to facilitate, sponsor, and offer certain contests, events, and promotions, monitor performance, contact winners, and grant prizes and benefits; and to comply with any applicable laws and regulations. 

    We will only use your Information for the purposes set out in Section 2 where you give us your permission and/or we are 
    satisfied that: 
       
        <span class="sub-TOS">our use of your Information is necessary</span>to perform a contract or take steps to enter a contract with you (e.g., to provide 
        you with Services, to provide you with our customer assistance and technical support), or 

        <span class="sub-TOS">our use of your Information is necessary</span> to comply with a relevant legal or regulatory obligation that we have, or 

        <span class="sub-TOS">our use of your Information is necessary</span> to support legitimate interests that we have as a business (for example, 
        to maintain and improve our Services by identifying user trends and the effectiveness of our promotional campaigns and 
        identifying technical issues), provided it is always conducted in a way that is proportionate, and that respects your privacy 
        rights 

<span class="sub-TOS">Promote safety, integrity, and security. </span>
We use the information we must verify accounts and activity, combat harmful conduct, detect, and prevent spam and other bad experiences, maintain the integrity of our Products, and promote safety and security on and from Abyss. For example, we use data we have to investigate suspicious activity or violations of our terms or policies, or to detect when someone needs help.  

<span class="TOS">3. How is this information shared?  </span>

Your information is shared with others in the following ways: 

<span class="sub-TOS">People and accounts you share and communicate with </span>
When you share and communicate using our Products, you choose the audience for what you share. For example, when you post on Abyss, you select the audience for the post, such as a group, all your friends, the public, or a customized list of people. Similarly, when you use Chat room to communicate with people or businesses, those people and businesses can see the content you send. Your network can also see actions you have taken on our Products, including engagement with ads and sponsored content.  

<span class="sub-TOS">Public information </span>can be seen by anyone, on or off our Products, including if they do not have an account. This includes your Abyss username; any information you share with a public audience; information in your public profile on Abyss; and content you share on an Abyss Status Update or any other public forum. You, other people using Abyss, and we can provide access to or send public information to anyone on or off our Products, in search results, or through tools and APIs. Public information can also be seen, accessed, reshared or downloaded through third-party services such as search engines, APIs, and offline media such as TV, and by apps, websites and other services that integrate with our Products. 

<span class="sub-TOS">Content others share or reshare about you </span>
You should consider who you choose to share with, because people who can see your activity on our Products can choose to share it with others on and off our Products, including people and businesses outside the audience you shared with. For example, when you share a post or send a message to specific friends or accounts, they can download, screenshot, or reshare that content to others across or off our Products. Also, when you comment on someone else's post or react to their content, your comment or reaction is visible to anyone who can see the other person's content, and that person can change the audience later. 

<span class="TOS">4. Your Rights in relation to your information</span>

    <span class="sub-TOS">It is imperative that you have control over your Information.</span>That is the reason we are taking reasonable steps to enable you 
    to access, receive a copy of, update, amend, delete, or limit the use of your Information. 

    <span class="sub-TOS">We may ask you for</span> additional information to confirm your identity and for security purposes, before disclosing the requested 
    data to you. We reserve the right to charge a fee were permitted by law, for instance if your request is manifestly unfounded 
    or excessive.  

    <span class="sub-TOS">You have the right</span> to lodge a complaint with your local supervisory authority for data protection (but we still recommend you 
    contact us first). 

    <span class="sub-TOS">For all Abyss Users,</span> if you may review and amend your Information by logging in and navigating to your Settings page on the
    website. Once there, you may modify information that is incorrect and delete certain information from your profile. You can 
    also change your permission settings for us to send you e-mail newsletters. 

    <span class="sub-TOS">For all Abyss Users,</span> if you wish to retrieve your Abyss Account data or permanently delete your Abyss data, please follow 
    the instructions provided in the following article: 

    <span class="sub-TOS">In addition,</span> feel free to send us an e-mail to help@abyss.com. We will make all reasonable efforts to honor your request 
    promptly (unless we require further information from you to fulfil your request) subject to legal and other permissible 
    considerations. 

        Please note that permanently deleting your Account erases all your information from our databases. After completing 
        this process, you can no longer use any of your Services, your Account and all its data will be removed permanently, 
        and we will not be able to restore your Account or retrieve your data in the future. If you contact Abyss Support in 
        the future, the system will not recognize your Account and support agents will not be able to locate the deleted Account. 

<span class="TOS">5. Data Retention</span>

We may retain your Information for as long as your Account is active, as indicated in this Privacy Policy or as otherwise needed to provide you with our Services. 

We may continue to retain such Information even after you deactivate your Account and/or cease to use any Services, as reasonably necessary to comply with our legal obligations, to resolve disputes regarding our Users, prevent fraud and abuse, enforce our agreements and/or protect our legitimate interests. Where your Information is no longer required, we will ensure it is securely deleted. 

<span class="TOS">6. Security</span>

We have implemented security measures designed to protect the Information you share with us, including physical, electronic, and procedural measures. Among other things, we offer HTTPS secure access to most areas on our Services; the transmission of sensitive payment information (such as a credit card number) through our designated purchase forms is protected by an industry standard SSL/TLS encrypted connection; and we regularly maintain a PCI DSS (Payment Card Industry Data Security Standards) certification. We also regularly monitor our systems for vulnerabilities and attacks, and regularly seek new ways and Third-Party Services for further enhancing the security of our Services and protection of our visitors' and Users' privacy. 

Regardless of the measures and efforts taken by us, we cannot and do not guarantee the absolute protection and security of your Information, or any other content you upload, publish, or otherwise share with us or anyone else. We therefore encourage you to set strong passwords for your User Account and avoid providing us or anyone with any sensitive information which you believe its disclosure could cause you substantial or irreparable harm. 

If you have any questions regarding the security of our Services, you are more than welcome to contact us at security-report@abyss.com. 
                    </pre>
                 </div>
             </div>
         </div>
      </div>

      
      <!-- footer section -->
      <footer class="footer">
        <div class="footer-container">
          <div class="row">
            <div id="logo-footer" class="footer-col">
              <ul>
                <li><a href="home.php"> <img src="Assets/logoWord.png" alt="" style="height: 30px; "></a></li>
              </ul>
            </div>
            
            <div class="footer-col">
              <ul>
                <li><a href="developer.php">DEVELOPERS</a></li>
                <li><a href="TOS.php">TERMS OF SERVICE</a></li>
                <li><a href="Privacy.php">PRIVACY POLICY</a></li>
              </ul>
            </div>

            <div id="social" class="footer-col">
              <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
        </div>
      </footer>

    </main>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="Assets/js/script.js"></script>
</body>

</html>
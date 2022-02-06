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
  <title>Abyss | Terms of Service</title>
  <link rel="stylesheet" href="Assets/css/root.css" />
  <link rel="stylesheet" href="Assets/css/TOS.css" />
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

<span id="intro">Terms of Service</span>
Please read these Terms of Service ("Terms") carefully. They contain the legal terms and conditions that govern your use of services provided to you by Abyss, including information, text, images, graphics, data or other materials ("Content") and products and services provided through <a class="abyss-link" href="http://localhost/abyss-with-db">Abyss</a> as well as all elements, software, programs and code forming or incorporated in to <a class="abyss-link" href="http://localhost/abyss-with-db/">Abyss</a> (the "Service"). This Service is operated by Abyss ("Abyss"). Abyss is also referred to in these Terms as "we", "our", and "us". 

By using our Service, you agree to be bound by Section I of these Terms ("General Terms"), which contains provisions applicable to all users of our Service, including visitors to the Abyss website (the "Site"). If you choose to register as a member of our Service or purchase products from the Abyss, you will be asked to check a box indicating that you have read, and agree to be bound by, the additional terms set forth in Section II of these Terms ("Additional Terms"). 

We don't charge you to use Abyss or the other products and services covered by these Terms.  

<span class="TOS">1. Who May Use the Services  </span>
Our mission is to give people the power to build community and bring the world closer together. To help artist in expressing their works.  

    <span class="sub-TOS">Provide a personalized experience for you:</span>
    Your experience on Abyss is unlike anyone else's: from the Abyssals and Status Update and other content you see in Posts. We 
    use the data we have - for example, about the connections you make, the choices and settings you select, and what you 
    share and do on and off our Products - to personalize your experience. 

    <span class="sub-TOS">Connect with people and organization you care about:</span>
    We help you find and connect with people, groups, businesses, organizations, and others that matter to you across Abyss. 
    Send a message to, deal with your abyssal and people you may want to become friends with. Stronger ties make for better
    communities, and we believe our services are most useful when people are connected to people, groups, and organizations 
    they care about. 

    <span class="sub-TOS">Empower you to express yourself and communicate about what matters to you:</span>
    There are many ways to express yourself on Abyss and to communicate with friends, family, and others about what matters 
    to you - for example, sharing status updates, photos, videos, and your artworks, sending messages to a friend or several 
    people or adding content to your profile.  

    <span class="sub-TOS">Help you discover content, products, and services that may interest you:  </span>
    We show you different topics depending on your interest to discover content, products or services offered by other Abyssians 
    or many. 

<span class="TOS">2. Privacy  </span>

Abyss has a firm commitment to safeguarding your privacy. Please review Abyss's Privacy Policy. The terms of Abyss's privacy policy are incorporated into, and form a part of, these Terms.  

<span class="TOS">3. Trademarks  </span>

All brand, product and service names used in this Service which identify Abyss or third parties and their products and services are proprietary marks of Abyss and/or the relevant third parties. Nothing in this Service shall be deemed to confer on any person any license or right on the part of Abyss or any third party with respect to any such image, logo or name. 
 

<span class="TOS">4. Copyright  </span>

Abyss is, unless otherwise stated, the owner of all copyright and data rights in the Service and its contents. Individuals who have posted works to Abyss are either the copyright owners of the component parts of that work or are posting the work under license from a copyright owner or his or her agent or otherwise as permitted by law. You may not reproduce, distribute, publicly display or perform, or prepare derivative works based on any of the Content including any such works without the express, written consent of Abyss or the appropriate owner of copyright in such works. Abyss does not claim ownership rights in your works or other materials posted by you to Abyss (Your Content). You agree not to distribute any part of the Service other than Your Content in any medium other than as permitted in these Terms of Service or by use of functions on the Service provided by us. You agree not to alter or modify any part of the Service unless expressly permitted to do so by us or by use of functions on the Service provided by us. 

<span class="TOS">5. Reporting Copyright Violations</span>

Abyss respects the intellectual property rights of others and expects users of the Service to do the same. At Abyss's discretion and in appropriate circumstances, Abyss may remove Your Content submitted to the Site, terminate the accounts of users or prevent access to the Site by users who infringe the intellectual property rights of others. If you believe the copyright in your work or in the work for which you act as an agent has been infringed through this Service, please contact Abyss’s agent for notice of claims of copyright infringement, who can be reached through violations@abyss.com. You must provide our agent with substantially the following information, which Abyss may then forward to the alleged infringer (see 17 U.S.C. 512 (c)(3) for further details): 

    <span class="sub-TOS">A physical or electronic</span> signature of a person authorized to act on behalf of the owner of an exclusive right that is allegedly 
    infringed.  

    <span class="sub-TOS">Identification of the copyrighted</span> work claimed to have been infringed, or, if multiple copyrighted works at a single online site 
    are covered by a single notification, a representative list of such works at that site.  
    
    <span class="sub-TOS">Identification of the material</span> that is claimed to be infringing or to be the subject of infringing activity and that is to be 
    removed or access to which is to be disabled, and information reasonably sufficient to permit the service provider to locate 
    the material. 

    <span class="sub-TOS">Information reasonably sufficient to</span> permit the service provider to contact the complaining party, such as an address, 
    telephone number, and, if available, an electronic mail address at which the complaining party may be contacted. 

    <span class="sub-TOS">A statement that</span> the complaining party has a good faith belief that use of the material in the manner complained of 
    is not authorized by the copyright owner.

    <span class="sub-TOS">A statement that</span> the information in the notification is accurate, and under penalty of perjury, that the complaining 
    party is authorized to act on behalf of the owner of an exclusive right that is allegedly infringed. 

Please see Abyss's Copyright Policy for further information and details. 

<span class="TOS">6. Amendment of the Terms </span>

We reserve the right to amend these Terms from time to time in our sole discretion. If you have registered as a member, we may notify you of any material changes to these Terms (and the effective date of such changes) by sending a notification on the Site. In addition, we will post the revised terms on the Site. If you continue to use the Service after the effective date of the revised Terms, you will be deemed to have accepted those changes. If you do not agree to the revised Terms, your sole remedy shall be to discontinue using the Service. 

<span class="TOS">7. General  </span>

These Terms constitute the entire agreement between Abyss and you with respect to your use of the Service. Abyss's failure to enforce any right or provision in these Terms shall not constitute a waiver of such right or provision. If a court should find that one or more provisions contained in these Terms is invalid, you agree that the remainder of the Terms shall be enforceable. Abyss shall have the right to assign its rights and/or delegate its obligations under these Terms, in whole or in part, to any person or business entity. You may not assign your rights or delegate your obligations under these Terms without the prior written consent of Abyss. These Terms shall be governed by and construed in accordance with the laws of the Philippines. Any disputes arising under or in connection with these Terms shall be subject to the exclusive jurisdiction of the state and federal courts of the Philippines. 

<span class="TOS">8. Additional Terms</span>

    <span class="sub-TOS">Registration </span>
    To register as a member of the Service or purchase products, you must be 13 years or lawfully permitted to enter into and form 
    contracts under applicable law. In no event may minors submit Content to the Service. You agree that the information that 
    you provide to us upon registration, at the time of purchase, and at all other times will be true, accurate, current and complete. 
    You also agree that you will ensure that this information is kept accurate and up to date at all times. This is especially 
    important with respect to your email address, since that is the primary way in which we will communicate with you about your 
    account and your orders. 

    <span class="sub-TOS">Password </span>
    When you register as a member you will be asked to provide a password. You are responsible for safeguarding the password 
    and you agree not to disclose your password to any third party. You agree that you shall be solely responsible for any activities
    or actions under your password, whether or not you have authorized such activities or actions. You shall immediately notify 
    Abyss of any unauthorized use of your password. 

    <span class="sub-TOS">Submitting Content </span>
    <i>Chat Rooms and Forums</i> - As a registered member of the Service, you will be granted the privilege of participating in chat 
    rooms and forums on the Abyss website as part of the Service, which means you may post Your Content in the form of text 
    for display in these areas of the Abyss website, subject to your compliance with the Terms. 

    <i>Artist Materials</i> - As a registered member of the Service, you will also be granted the privilege of submitting certain types of 
    Your Content, known as "Artist Materials," for display on your user page. Prior to submitting Artist Materials, you must accept the 
    additional terms and conditions of the Submission Policy, which is incorporated into, and forms a part of, the Terms.  

    <span class="sub-TOS">Copyright in Your Content </span>
    Abyss does not claim ownership rights in Your Content. For the sole purpose of enabling us to make your Content available 
    through the Service, you grant to Abyss a non-exclusive, royalty-free license to reproduce, distribute, re-format, store, 
    prepare derivative works based on, and publicly display and perform Your Content. Please note that when you upload 
    Content, third parties will be able to copy, distribute and display your Content using readily available tools on their 
    computers for this purpose although other than by linking to your Content on Abyss any use by a third party of your Content 
    could violate paragraph 4 of these Terms and Conditions unless the third party receives permission from you by license.

    <span class="sub-TOS">Monitoring Content </span>
    Abyss has no ability to control the Content you may upload, post or otherwise transmit using the Service and does not 
    have any obligation to monitor such Content for any purpose. You acknowledge that you are solely responsible for all 
    Content and material you upload, post or otherwise transmit using the Service.


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
                <li><a href="#"> <img src="Assets/logoWord.png" alt="" style="height: 30px; "></a></li>
              </ul>
            </div>
            <div class="footer-col">
              <ul>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">CONTACT</a></li>
                <li><a href="#">MEMBERSHIP</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <ul>
                <li><a href="#">DEVELOPERS</a></li>
                <li><a href="#">ADVERTISE</a></li>
                <li><a href="#">TERMS OF SERVICE</a></li>
                <li><a href="#">PRIVACY POLICY</a></li>
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
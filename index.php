<?php

include 'admin/functions.php';
session_start();
$conn = mysqli_connect("localhost","root","","trashbank");
$dnt=date("m/d/Y, h:s A"); 

$_POST['datereceived']=$dnt;

if (isset($_POST["submit"])) { 
     
     if(addmessage($_POST) > 0){
          echo "<script>
alert('Message Sent');
          </script>
          ";
          
     } else {echo "<script>
          alert('Failed When Sending The Message');
                    </script>;"
          ;}
}
?>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Bank Sampah | Aku Sampah</title>
    <link rel="shortcut icon" href="assets/images/logo.png" type="image">

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-space-dynamic.css">
    <link rel="stylesheet" href="assets/css/animated.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <style>
      .welcome-area {
          overflow: hidden;
          position: relative;
          display: flex;
          align-items: center;
          justify-content: center;
          background-image: url(assets/images/banner-bg-new.png);
          background-repeat: no-repeat;
          background-position: center center;
          background-size: cover; 
          height: 100vh;
        }
      </style>
  </head>

<body>

  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  
  <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            
            <a href="index.html" class="logo">
              <h4> Aku<span>Sampah</span></h4>
            </a>
            
            <ul class="nav">
              <li class="scroll-to-section"><a href="#Home" class="active">Home</a></li>
              <li class="scroll-to-section"><a href="#about">About</a></li>
              <li class="scroll-to-section"><a href="#portfolio">Things We Do</a></li>
              <li class="scroll-to-section"><a href="#contact">Contact Us</a></li> 
            </ul>        
            <a class='menu-trigger'>
                <span>Menu</span>
            </a>
            
          </nav>
        </div>
      </div>
    </div>
  </header>
  
  <div class="welcome-area" id="Home">

    <div class="header-text">
        <div class="container">
            <div class="row">
                <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
                    <h1>Welcome to <strong>Aku Sampah</strong><br> Trash Bank</h1>
                    <p>Make us rich by donating your trash!</p>
                </div>
            </div>
        </div>
    </div>
    
</div>


  <div class="main-banner wow fadeIn Home" id="about" data-wow-duration="1s" data-wow-delay="0.5s">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 align-self-center">
              <div class="left-content header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                <h6><strong>Aku Sampah Trash Bank</strong><br>your trash = our money</h6>
                <p>Garbage, trash, rubbish, or refuse is waste material that is discarded by humans, usually due to 
                  a perceived lack of utility. The term generally does not encompass bodily waste products, purely 
                  liquid or gaseous wastes, nor toxic waste products. Garbage is commonly sorted and classified into 
                  kinds of material suitable for specific kinds of disposal.<br>
                  The word garbage originally meant chicken giblets and other entrails, as can be seen in the 15th 
                  century Boke of Kokery, which has a recipe for Garbage.<br>
                  -<em>Wikipedia</em>-
                </p>
                <!-- <form id="search" action="" method="POST">
                    <fieldset>
                      <input type="abc" name="abc" class="email" placeholder="Galeri Foto & Video" disabled >
                    </fieldset>
                    <fieldset>
                      <button type="submit" class="main-button" name="submit"><a href="galeri.php">Go!</a></button>
                    </fieldset>
                  </form> -->
              </div>
            </div>
            <div class="col-lg-6">
              <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                <img src="assets/images/banner-right-image1.png" alt="team meeting">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="section-heading  wow bounceIn col-lg-6 offset-lg-3" data-wow-duration="1s" data-wow-delay="0.2s">
    <h2 style="text-align:center;">what have we <em>done </em> &amp; <br>
    What are we going to<span> do</span></h2>
  </div>

  <div id="portfolio" class="about-us section" style="margin-top: 10px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="left-image wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
            <img src="assets/images/about-left-image.png" alt="person graphic">
          </div>
        </div>
        <div class="col-lg-8 align-self-center">
          <div class="services">
            <div class="row">
              <div class="col-lg-6">
                <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                  <div class="icon">
                    <img src="assets/images/service-icon-01-new.png" alt="reporting">
                  </div>
                  <div class="right-text">
                    <h4>Great Transaction</h4>
                    <p>You give us trash, we give you <span style="font-size:5px;">(some)</span> money.<em> What a great deal!</em></p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.7s">
                  <div class="icon">
                    <img src="assets/images/service-icon-02-new.png" alt="">
                  </div>
                  <div class="right-text">
                    <h4>Save the Environment</h4>
                    <p>Make the world a better place <span style="font-size:5px;">(for us ofc)</span> by starting to doing the trash</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.9s">
                  <div class="icon">
                    <img src="assets/images/service-icon-03-new.png" alt="">
                  </div>
                  <div class="right-text">
                    <h4>Recycling</h4>
                    <p>Reduces the amount of waste sent to landfills and incinerators, conserves natural resources, saves energy, and else</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="1.1s">
                  <div class="icon">
                    <img src="assets/images/service-icon-04-new.png" alt="">
                  </div>
                  <div class="right-text">
                    <h4>Make People Smarter</h4>
                    <p>With the creation of this waste bank, hopefully the public will become more critical and intelligent in terms of waste</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <br><br>

  <div id="contact" class="contact-us section">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center wow fadeInLeft" data-wow-duration="0.5s" data-wow-delay="0.25s">
          <div class="section-heading">
            <h2>If You Require Any Further Information, Feel Free to Contact Us.</h2>
            <p>You can use the message box on the side or use the phone number below to contact me. If I'm busy and can't answer your phone call, please leave a voicemail for me.</p>
            <div class="phone-info">
              <h4>You Can Reach Me at: <span>&nbsp&nbsp&nbsp<img src="assets/images/phoneicon.png" style="width:5%;height:5%;"></i>&nbsp&nbsp <a href="#">0812-345-32784</a></span></h4>
            </div>
          </div>
        </div>
        <div class="col-lg-6 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.25s">
          <form id="contact" action="" method="post">
            <div class="row">
              <div class="col-lg-6">
                <fieldset>
                  <input type="text" name="mname" id="name" placeholder="Name" autocomplete="off" required>
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <input type="text" name="memail" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <textarea name="message" type="text" class="form-control" id="message" placeholder="Message" required=""></textarea>  
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <button type="submit" name="submit" class="main-button ">Send Message</button>
                </fieldset>
              </div>
            </div>
            <div class="contact-dec">
              <img src="assets/images/contact-decoration.png" alt="">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.25s">
          <p><a rel="nofollow" href="admin/login.php" style="color:black;">©</a> Copyright 2021 Space Dynamic Co. All Rights Reserved. 
          </p>
        </div>
      </div>
    </div>
  </footer>
  <!-- Scripts -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/animation.js"></script>
  <script src="assets/js/imagesloaded.js"></script>
  <script src="assets/js/templatemo-custom.js"></script>

</body>
</html>
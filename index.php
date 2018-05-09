<?php
require('constant.php');
?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Creative - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <script src="component/jquery/jquery-3.2.1.min.js"></script>
    <script>
    $(document).ready(function (e){
      $("#frmContact").on('submit',(function(e){
        e.preventDefault();
        $("#mail-status").hide();
        $('#send-message').hide();
        $('#loader-icon').show();
        $.ajax({
          url: "contact.php",
          type: "POST",
          dataType:'json',
          data: {
          "name":$('input[name="name"]').val(),
          "email":$('input[name="email"]').val(),
          "phone":$('input[name="phone"]').val(),
          "content":$('textarea[name="content"]').val(),
          "g-recaptcha-response":$('textarea[id="g-recaptcha-response"]').val()},
          success: function(response){
          $("#mail-status").show();
          $('#loader-icon').hide();
          if(response.type == "error") {
            $('#send-message').show();
            $("#mail-status").attr("class","error");
          } else if(response.type == "message"){
            $('#send-message').hide();
            $("#mail-status").attr("class","success");
          }
          $("#mail-status").html(response.text);
          },
          error: function(){}
        });
      }));
    });
    </script>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">

    <script src='https://www.google.com/recaptcha/api.js'></script>

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">City Guide</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">

            <!-- Suche -->
            <form action="suche.php" method="post" id="search">
              <table align="center" width="200">
                <tr>
                  <td width="60%"><input name="name" placeholder="Suche..." type="text" maxlength="255" size="20" /></td>
                </tr>
              </table>
            </form>

          </ul>
        </div>
      </div>
    </nav>

    
	<!-- Inhalt -->
	
	<header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>City Guide</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">Alle Informationen zu Ihrem Traumurlaub!</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Erfahren Sie mehr!</a>
          </div>
        </div>
      </div>
    </header>

    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">Wir haben die Informtionen die Sie brauchen!</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">Auf unserer Seite finden Sie alle Informationen für Ihren nächsten Urlaub.</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Los geht`s!</a>
          </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Bei uns finden Sie!</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Traumhafte Städte!</h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Persönlich!</h3>
              <p class="text-muted mb-0">Schnelle und persönliche Beratung.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Informationen</h3>
              <p class="text-muted mb-0">Wir stellen Ihnen sämtliche Informationen zur Verfügung.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Verlieben Sie sich!</h3>
              <p class="text-muted mb-0">Entdecken Sie neue Städte.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="p-0" id="portfolio">
      <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="seiten.php?lid=3"> <!-- Link zu individueller Seite -->
              <img class="img-fluid" src="img/portfolio/thumbnails/1.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Mailand
                  </div>
                  <div class="project-name">
                    Im Herzen Italiens!
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="seiten.php?lid=4"> <!-- Link zu individueller Seite -->
              <img class="img-fluid" src="img/portfolio/thumbnails/2.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Marseille
                  </div>
                  <div class="project-name">
                    Geniessen Sie die Côte d’Azur!
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="seiten.php?lid=5"> <!-- Link zu individueller Seite -->
              <img class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Tokyo
                  </div>
                  <div class="project-name">
                    Lernen Sie japanische Traditionen kennen!
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="seiten.php?lid=1"> <!-- Link zu individueller Seite -->
              <img class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Barcelona
                  </div>
                  <div class="project-name">
                    Werden Sie unabhängig!
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="seiten.php?lid=6"> <!-- Link zu individueller Seite -->
              <img class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Sydney
                  </div>
                  <div class="project-name">
                    Entdecken Sie die weiten Australiens!
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="seiten.php?lid=2"> <!-- Link zu individueller Seite -->
              <img class="img-fluid" src="img/portfolio/thumbnails/6.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Vancover
                  </div>
                  <div class="project-name">
                    Moderne verbunden mit der Natur!
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

    <section class="bg-dark text-white">
      <div class="container text-center">

      </div>
    </section>

   <!-- Kontaktformular -->

   <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Kontaktieren Sie uns!</h2>
            <hr class="my-4">
            <p class="mb-5">Wir stehen Ihnen jederzeit für eine Beratung zur Verfügung!</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <div id="message">
            
			<!-- Formularfelder -->
			<form id="frmContact" action="" method="POST" novalidate="novalidate">
              <div class="label">Name:</div>
              <div class="field">
                <input type="text" id="name" name="name" class="required" aria-required="true" required>
              </div><br>
              <div class="label">Email:</div>
              <div class="field">
                <input type="text" id="email" name="email" class="required email" aria-required="true" required>
              </div><br>
              <div class="label">Telefonnummer:</div>
              <div class="field">
                <input type="text" id="phone" name="phone" class="required phone" aria-required="true" required>
              </div><br>
              <div class="label">Kommentar:</div>
              <div class="field">
                <textarea id="comment-content" name="content"></textarea>
              </div><br>
              
			  <!-- ReCaptcha -->
			  <div class="g-recaptcha" data-sitekey="<?php echo SITE_KEY; ?>" style="margin-left:36%;"></div><br>
              <div id="mail-status"></div>
              <button type="Submit" id="send-message" style="clear:both;">Nachricht senden</button>
            </form>
            <div id="loader-icon" style="display:none;"><img src="img/loader.gif" /></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>

  </body>

</html>

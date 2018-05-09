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

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="index.php">City Guide</a>
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

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
		  
		  <!-- Bedingungen -->
		  
		  <?php

			$lid = $_GET['lid'];

			include('db_connect.php');

			$sql = "
			SELECT DISTINCT *
			FROM staedte
			WHERE
			id = '$lid'
			";

			  $result = $connect->query($sql);
			  while($zeile = $result->fetch_assoc()){
					echo '<h2 class="section-heading">'.$zeile['Name'];}
					 ?>
					 
			</h2>
			<hr class="my-4">
			</div>
			</div>
			</div>
			<div class="container">
			<div class="row">
			
			<!-- Ausgabe der Einzelseite -->
			<?php

			  $result = $connect->query($sql);
			  while($zeile = $result->fetch_assoc()){
			  echo '<img src="' . $zeile['Bild'] . '" style="margin-left: -15%;"> </div></br>';
			  echo '<div class="row"><div class="col-lg-2"></div><div class="col-lg-8">' . $zeile['Beschreibung'] . '</div></div></br>';
			  echo '<div class="row"><div class="col-lg-2 "></div><div class="col-lg-8" style="float: none; margin: 0 auto;">' . $zeile['Maps'] . '</div></div></br>';
			  echo '<div class="row"><div class="col-lg-2"></div><div class="col-lg-8" style="margin-left: 40%;"><a href="stadt.php?lid=' .$zeile['ID']. "\">". " Als PDF ansehen</a></div></div></br>";
					}


				?>

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

  </body>

</html>

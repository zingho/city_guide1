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
        <a class="navbar-brand" href="index.html">City Guide</a>
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
          <div class="col-lg-4">

            <!-- Suchausgabe -->
            <?php
            			include('db_connect.php');

                  // Begriff aus der Suche Auslesen
                  $suche = $_POST['name'];

            			// Bestimmen, nach was gesucht wird
            			$sql = "
            			SELECT DISTINCT *
            			FROM staedte
            			WHERE
            			Name LIKE '%$suche%';
            			";

            			// Ausgabe der Suche
            			$result = $connect->query($sql);
            			if($result->num_rows>0){
            					while($zeile = $result->fetch_assoc()){
            					echo '<div class="row"><h2><a href="seiten.php?lid=' .$zeile['ID']. "\">". $zeile['Name'] . "</a></h2></div></br>";
            					}
            			}

            			// Falls keine Einträge gefunden werden
            			else{
            				echo "<h3>Keine Ergebnisse für $suche gefunden</h3>";
            			}
            		?>
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

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
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">Über uns</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Städte</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Kontakt</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Danke für die Eingabe</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">

		<?php
		//send_email.php
		$email_from = "absender@domain.de";   //Absender falls keiner angegeben wurde
		$sendermail_antwort = true;      //E-Mail Adresse des Besuchers als Absender. false= Nein ; true = Ja
		$name_von_emailfeld = "Email";   //Feld in der die Absenderadresse steht
		 
		$empfaenger = "empfaenger@domain.de"; //Empfänger-Adresse
		$mail_cc = ""; //CC-Adresse, diese E-Mail-Adresse bekommt einer weitere Kopie
		$betreff = "Neue Kontaktanfrage"; //Betreff der Email
		 
		$url_ok = "http://www.domain.de/ok.php"; //Zielseite, wenn E-Mail erfolgreich versendet wurde
		$url_fehler = "http://www.domain.de/fehler.php"; //Zielseite, wenn E-Mail nicht gesendet werden konnte
		 
		 
		//Diese Felder werden nicht in der Mail stehen
		$ignore_fields = array('submit');
		 
		 
		 
		 
		//Datum, wann die Mail erstellt wurde
		$name_tag = array("Sonntag", "Montag", "Dienstag", "Mittwoch", "Donnerstag", "Freitag", "Samstag");
		$num_tag = date("w");
		$tag = $name_tag[$num_tag];
		$jahr = date("Y");
		$n = date("d");
		$monat = date("m");
		$time = date("H:i");
		 
		//Erste Zeile unserer Email
		$msg = ":: Gesendet am $tag, den $n.$monat.$jahr - $time Uhr ::\n\n";
		 
		//Hier werden alle Eingabefelder abgefragt
		foreach($_POST as $name => $value) {
		   if (in_array($name, $ignore_fields)) {
				continue; //Ignore Felder wird nicht in die Mail eingefügt
		   }
		   $msg .= "::: $name :::\n$value\n\n";
		}
		 
		 
		 
		//E-Mail Adresse des Besuchers als Absender
		if ($sendermail_antwort and isset($_POST[$name_von_emailfeld]) and filter_var($_POST[$name_von_emailfeld], FILTER_VALIDATE_EMAIL)) {
		   $email_from = $_POST[$name_von_emailfeld];
		}
		 
		$header="From: $email_from";
		 
		if (!empty($mail_cc)) {
		   $header .= "\n";
		   $header .= "Cc: $mail_cc";
		}
		 
		//Email als UTF-8 senden
		$header .= "\nContent-type: text/plain; charset=utf-8";
		 
		$mail_senden = mail($empfaenger,$betreff,$msg,$header);
		 
		 
		//Weiterleitung, hier konnte jetzt per echo auch Ausgaben stehen
		if($mail_senden){
		  header("Location: ".$url_ok); //Mail wurde gesendet
		  exit();
		} else{
		  header("Location: ".$url_fehler); //Fehler beim Senden
		  exit();
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

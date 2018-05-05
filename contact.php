<?php
if($_POST)
{
require('constant.php');

    $user_name      = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
    $user_email     = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);
    $user_phone     = filter_var($_POST["phone"], FILTER_SANITIZE_STRING);
    $content   = filter_var($_POST["content"], FILTER_SANITIZE_STRING);

	if(empty($user_email)) {
		$empty[] = "<b>Email</b>";
	}
	if(empty($user_phone)) {
		$empty[] = "<b>Telefonnummer</b>";
	}
	if(empty($content)) {
		$empty[] = "<b>Kommentar</b>";
	}

	if(!empty($empty)) {
		$output = json_encode(array('type'=>'error', 'text' => implode(", ",$empty) . ' benötigt!'));
        die($output);
	}

	if(!filter_var($user_email, FILTER_VALIDATE_EMAIL)){ //Email Validierung
	    $output = json_encode(array('type'=>'error', 'text' => '<b>'.$user_email.'</b> Keine korrekte Email'));
		die($output);
	}

	//reCAPTCHA Validierung
	if (isset($_POST['g-recaptcha-response'])) {

		require('component/recaptcha/src/autoload.php');

		$recaptcha = new \ReCaptcha\ReCaptcha(SECRET_KEY, new \ReCaptcha\RequestMethod\SocketPost());

		$resp = $recaptcha->verify($_POST['g-recaptcha-response'], $_SERVER['REMOTE_ADDR']);

		  if (!$resp->isSuccess()) {
				$output = json_encode(array('type'=>'error', 'text' => '<b>Captcha</b> Validation benötigt!'));
				die($output);
		  }
	}

	$toEmail = "david.singh@lernende.bfo-vs.ch";
	$mailHeaders = "From: " . $user_name . "<" . $user_email . ">\r\n";
	if (mail($toEmail, "Contact Mail", $content, $mailHeaders)) {
	    $output = json_encode(array('type'=>'message', 'text' => 'Hallo '.$user_name .', vielen Dank für deinen Kommentar. Wir werden uns in Kürze bei dir melden.'));
	    die($output);
	} else {
	    $output = json_encode(array('type'=>'error', 'text' => 'Mail konnte nicht gesendet werden. Bitte kontaktiere:'.SENDER_EMAIL));
	    die($output);
	}
}
?>

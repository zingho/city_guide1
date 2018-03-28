<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fussballligen</title>
    <link href="../style.css" rel="stylesheet">
  </head>
  <body>
  <div id="wrapper">
      <div id="header"><a href="../index.php"><img src="../logo.png"></a>
	  
	<!-- Suche --> 
	<form action="../suche.php" method="post" id="search">
		<table align="center" width="200">
			<tr>
				<td width="60%"><input name="name" type="text" maxlength="255" size="20" /></td>
			</tr>
		</table>
	</form>
	
	<!-- Navigation -->
	<ul>
		<li><a href="../index.php">Home</a></li>
		<li><a href="../privat.php">Ligen bearbeiten</a></li>
		<li><a href="../registrierung.php">Registrierung</a></li>
		<li><a href="../login.php">Login</a></li>
	</ul>		  
	  
  </div>
	 
	<!-- Textbereich --> 
	<div id="content" align="center">
	<?php
	
	include('../db_connect.php');
		
	$lid = $_GET['lid'];


	$sql = "
	SELECT DISTINCT * 
	FROM ligen
	WHERE
	ID = '$lid'
	";

	$result = $connect->query($sql);
	echo '<table border="1">';
	while($zeile = $result->fetch_assoc()){
	echo "<tr>";
	echo '<td>'.'<img src="' . $zeile['Bild'] . '" height="150px"> </td>';
	echo "<td>". $zeile['Name'] . "</a></td>";
	echo '<td id="beschreibung"> '. $zeile['Beschreibung'] . "</td>";
	echo "<td>". $zeile['Gruendungsjahr'] . "</td>";
	echo "</tr>";
    }
	echo "</table>";
	
	
	?>
	
	<button onclick="goBack()" class="knopf">Zurück</button>

	<script>
	function goBack() {
		window.history.back();
	}
	</script>
	
	</div>
	
  </body>
</html>

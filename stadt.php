<?php
$lid = $_GET['lid'];

include('db_connect.php');

$sql = "
SELECT DISTINCT *
FROM staedte
WHERE
id = '$lid'
";

require('fpdf.php');

$result = $connect->query($sql);
while($zeile = $result->fetch_assoc()){

$umlaut = $zeile['Beschreibung'];

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Cell(40,10,$zeile['Name'],0,1);
$pdf->Image($zeile['Bild'], 12, 20, 100, 0);
$pdf->MultiCell(200,55,"",0,1);

$pdf->SetFont('Arial','',12);
$pdf->MultiCell(200,6,utf8_decode($umlaut),0,1);
$pdf->Ln(20);
$pdf->Output();

}
?>

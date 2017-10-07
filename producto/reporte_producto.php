
<?php error_reporting (0);?>
<?php
require_once("../lib/pdf/class.ezpdf.php");
include_once("../clases/clsProducto.php");

$criterio=$_GET["criterio"];
$busqueda=$_GET["busqueda"];

$pdf =& new Cezpdf('a4');
$pdf->selectFont('../lib/pdf/fonts/Helvetica.afm');
$pdf->ezSetCmMargins(1,1,1.5,1.5);

$objProducto=new clsProducto;
$result=$objProducto->consultarProductoPorParametro($criterio,$busqueda,'');


$ixx = 0;
while($datatmp = mysql_fetch_assoc($result)) { 
	$ixx = $ixx+1;
	$data[] = array_merge($datatmp, array('num'=>$ixx));
}
$titles = array(
				'num'=>'<b>#</b>',
				'Codigo'=>'<b>CODIGO BAR.</b>',
				'Nombre'=>'<b>NOMBRE</b>',
				'Descripcion'=>'<b>DESCRIPCION</b>',
				'Stock'=>'<b>STOCK</b>',		
				'PrecioCosto'=>'<b>COSTO</b>',	
				'PrecioVenta'=>'<b>PRECIO</b>',	
				'Estado'=>'<b>ESTADO</b>',																			
				'IdProducto'=>'<b>ID</b>'
			);
$options = array(
				'shadeCol'=>array(0.9,0.9,0.9),
				'xOrientation'=>'center',
				'width'=>500,
				'cols'=>array('num'=>array('justification'=>'center', 'width'=>30), 'Codigo'=>array('justification'=>'center', 'width'=>80), 'Nombre'=>array('justification'=>'left', 'width'=>60),'IdProducto'=>array('justification'=>'center','width'=>30))
				
			);
$txttit="<b>SISTEMA DE VENTAS</b>";
$txtsubtit="Reporte de Productos\n";

$pdf->addJpegFromFile("../img/icon/logo_casita_jpg.jpg", 475, 760, 70,50);


date_default_timezone_set('America/Lima');
$pdf->ezText($txttit,16);
$pdf->ezText($txtsubtit,12);
$pdf->ezText("<b>Fecha: </b> ". date('d/m/Y'), 10);
$pdf->ezText("<b>Hora: </b> ". date('H:i:s'). "\n\n", 10);
$pdf->ezTable($data, $titles, '', $options);
$pdf->ezText("\n\n\n", 10);
$pdf->ezStream();
?>

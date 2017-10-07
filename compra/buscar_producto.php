
<?php
error_reporting(0);
$criterio=$_GET["criterio"];
$busqueda=$_GET["busqueda"];

include_once("../clases/clsProducto.php");	
$objProducto=new clsProducto;
$result=$objProducto->consultarProductoPorParametro($criterio,$busqueda,'');

//<!--<table id="productos">-->

$i=0;
	
while($row=@mysql_fetch_array($result)){
	$i=$i+1;
	if ($c==1){
		echo "<tr class='row1'>";
		$c=2;
	}else{
		echo "<tr class='row0'>";
		$c=1;
	}	
	echo "<td width='13'>".$i."</td>";
	echo "<td><a style='cursor: pointer;' href='index.php?txtCodigo=".$row['Codigo']."'>".$row['Codigo']."</a></td>";
	echo "<td><a style='cursor: pointer;' href='index.php?txtCodigo=".$row['Codigo']."'>".$row['Nombre']."</a></td>";
	echo "<td><a style='cursor: pointer;' href='index.php?txtCodigo=".$row['Codigo']."'>".$row['Descripcion']."</a></td>";
	echo "<td align='center'>".$row['Stock']."</td>";
	echo "<td align='center'>".$row['PrecioCosto']."</td>";
	$estado=$row['Estado'];
	if($estado=="ACTIVO"){
	echo "<td align='center'><img src='../img/header/activo.png' title='Activo'></td>";
}else{
	echo "<td align='center'><img src='../img/header/inactivo.png' title='Inactivo'></td>";
	}
	echo "<td align='center'>".$row['Categoria']."</td>";
	echo "<td width='1%'>".$row['IdProducto']."</td>";
	echo "</tr>";	
}
?>


<?php

// $nombre1=0;
 
// session_start();
// $_SESSION['$contando1'] = $i;

//$_GET['$contando1'] = $i;
//include 'index.php';

//$GLOBALS['aconta'] = 5;




if ($i ==0){
 		
 		//echo $_SESSION['$contando1'] ;
 		
	//echo "<div class='modal fade'> No se encontro0000000000000000000000000000000000000000000000  </div>";

 		echo "<div class='box-info'>No se encontro  </div>";



 		//echo "<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="edit-user-modal-label" aria-hidden="true">
    //<div class="modal-dialog">"

		 //echo "<script type='text/javascript'> alert('failed!')</script>";
		//alert("Hello World");

		//echo " se muestrannnnnn ".$aconta." registros";

 		 }
 else{ 


 		echo " <div class='box-info'>se muestran ".$i." registros </div>";



 }




?>

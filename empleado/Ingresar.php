<?php
    session_start();
	include_once("../clases/clsEmpleado.php");
    
    $objEmpleado = new clsEmpleado;
    if(!isset($_SESSION['txtUsuario'])) {
        if(isset($_POST['txtPassword'])) {
            if(isset($_POST['tipousuario'])) {

                $result=$objEmpleado->Ingresar_Sistema2($_POST['txtUsuario'],$_POST['txtPassword'],$_POST['tipousuario']);
                if($row=mysql_fetch_array($result)) {

                $_SESSION["id"] = $row['IdEmpleado'];
                $_SESSION["usuario"] = $row['Nombre'];
                $_SESSION["tipousuario"] = $row['IdTipoUsuario'];

                header("Location:../Inicio.php");
                } else {
                header("Location:../index.php");
                }
            }
        }
    }
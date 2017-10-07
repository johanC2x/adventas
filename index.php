<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    
    <title>AdVentas - SISTEMA DE VENTAS TERABYTE</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <style type="text/css">
    a:link {
	color: #0000FF;
}
    body,td,th {
	font-family: "Times New Roman", Times, serif;
}
body {
	background-color: #F0F0F0;
}
    h1,h2,h3,h4,h5,h6 {
	font-weight: bold;
}
    </style>

    <!-- Custom Fonts -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body bgcolor="#66CCFF">

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">SISTEMA DE VENTAS TERABYTE </h3>
                        
                       </br>
                        <h3 class="panel-title">Iniciar sesión</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" name="frmUsuario" method="post" action="empleado/Ingresar.php">
                          <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Usuario" name="txtUsuario" id="txtUsuario" type="text" autofocus required="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="txtPassword" id="txtPassword" type="password" required="">
                                </div>
                                <div class="form-group">
                                    <select name="tipousuario" id="tipousuario" class="form-control" required="">
                                        <option selected=""></option>
                                    	<option value="1">ADMINISTRADOR</option>
                                    	<option value="2">VENDEDOR</option>
                                        <option value="3">ALMACENERO</option>
                                    </select>
                                </div>
                            <h6><!-- Change this to a button or input when using this as a form -->
                                </h6>
                              <pre><strong><button type="submit" class="progress-bar-info" id="page-wrapper">INGRESAR</button>
                                </strong></pre>
                          </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    

</body>

</html>

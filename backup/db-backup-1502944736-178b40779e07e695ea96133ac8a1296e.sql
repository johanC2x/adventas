DROP TABLE categoria;nnCREATE TABLE `categoria` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;nnINSERT INTO categoria VALUES("1","Tecnología" ) ; nINSERT INTO categoria VALUES("2","Accesorios" ) ; nINSERT INTO categoria VALUES("3","Telecomunicaciones" ) ; nINSERT INTO categoria VALUES("4","Camaras" ) ; nINSERT INTO categoria VALUES("5","Software" ) ; nINSERT INTO categoria VALUES("6","Antivirus" ) ; nnnnDROP TABLE cliente;nnCREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Ruc` varchar(11) DEFAULT NULL,
  `Dni` varchar(8) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Obsv` text,
  `Usuario` varchar(30) DEFAULT NULL,
  `Contrasena` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;nnINSERT INTO cliente VALUES("1","PUBLICO GENERAL","20477157771","47715777","Chiclayo","455630","aaa","cliente","123" ) ; nINSERT INTO cliente VALUES("2","OSWALDO PEREZ SOSA","10456365897","45636589","chancay","9976323214","","","" ) ; nINSERT INTO cliente VALUES("3","Luis Marquez","10231244411","32123331","Calle ayacucho","3771111","activo","","" ) ; nnnnDROP TABLE compra;nnCREATE TABLE `compra` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoDocumento` int(11) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `Numero` varchar(20) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `SubTotal` decimal(8,2) DEFAULT NULL,
  `Igv` decimal(8,2) DEFAULT NULL,
  `Total` decimal(8,2) DEFAULT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdCompra`),
  KEY `fk_Compra_Proveedor1_idx` (`IdProveedor`),
  KEY `fk_Compra_Empleado1_idx` (`IdEmpleado`),
  KEY `fk_Compra_TipoDocumento1_idx` (`IdTipoDocumento`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;nnINSERT INTO compra VALUES("1","1","1","1","C0000000001","2015-04-20","273.37","49.21","322.58","EMITIDO" ) ; nINSERT INTO compra VALUES("2","1","1","1","C0000000002","2015-04-20","21.19","3.81","25.00","EMITIDO" ) ; nINSERT INTO compra VALUES("3","1","1","1","C0000000003","2015-04-20","1366.86","246.03","1612.90","EMITIDO" ) ; nINSERT INTO compra VALUES("4","2","1","1","C0000000004","2015-04-23","379.31","68.28","447.58","EMITIDO" ) ; nINSERT INTO compra VALUES("5","2","1","1","C0000000005","2017-07-01","4237.29","762.71","5000.00","EMITIDO" ) ; nINSERT INTO compra VALUES("6","1","1","1","C0000000006","2017-07-01","338.98","61.02","400.00","EMITIDO" ) ; nINSERT INTO compra VALUES("7","2","2","1","C0000000007","2017-07-01","1913.61","344.45","2258.06","EMITIDO" ) ; nINSERT INTO compra VALUES("8","1","5","1","C0000000008","2017-07-01","4100.59","738.11","4838.70","EMITIDO" ) ; nINSERT INTO compra VALUES("9","1","3","1","C0000000009","2017-07-01","12.71","2.29","15.00","EMITIDO" ) ; nINSERT INTO compra VALUES("10","2","1","1","C0000000010","2017-07-02","127.12","22.88","150.00","EMITIDO" ) ; nINSERT INTO compra VALUES("11","1","1","1","C0000000011","2017-08-05","5467.46","984.14","6451.60","EMITIDO" ) ; nINSERT INTO compra VALUES("12","1","1","1","C0000000012","2017-08-13","21.19","3.81","25.00","EMITIDO" ) ; nINSERT INTO compra VALUES("13","1","1","1","C0000000013","2017-08-13","4194.92","755.09","4950.00","EMITIDO" ) ; nINSERT INTO compra VALUES("14","3","6","1","C0000000014","2017-08-16","3280.47","590.48","3870.96","EMITIDO" ) ; nINSERT INTO compra VALUES("15","1","1","1","C0000000015","2017-08-16","1913.61","344.45","2258.06","EMITIDO" ) ; nnnnDROP TABLE detallecompra;nnCREATE TABLE `detallecompra` (
  `IdCompra` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `Cantidad` decimal(8,2) NOT NULL,
  `Precio` decimal(8,2) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  KEY `fk_DetalleCompra_Compra1_idx` (`IdCompra`),
  KEY `fk_DetalleCompra_Producto1_idx` (`IdProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;nnINSERT INTO detallecompra VALUES("1","3","1.00","322.58","322.58" ) ; nINSERT INTO detallecompra VALUES("2","2","1.00","25.00","25.00" ) ; nINSERT INTO detallecompra VALUES("3","3","5.00","322.58","1612.90" ) ; nINSERT INTO detallecompra VALUES("4","3","1.00","322.58","322.58" ) ; nINSERT INTO detallecompra VALUES("4","2","5.00","25.00","125.00" ) ; nINSERT INTO detallecompra VALUES("5","2","200.00","25.00","5000.00" ) ; nINSERT INTO detallecompra VALUES("6","4","10.00","40.00","400.00" ) ; nINSERT INTO detallecompra VALUES("7","3","7.00","322.58","2258.06" ) ; nINSERT INTO detallecompra VALUES("8","3","15.00","322.58","4838.70" ) ; nINSERT INTO detallecompra VALUES("9","9","1.00","15.00","15.00" ) ; nINSERT INTO detallecompra VALUES("10","9","10.00","15.00","150.00" ) ; nINSERT INTO detallecompra VALUES("11","3","20.00","322.58","6451.60" ) ; nINSERT INTO detallecompra VALUES("12","11","1.00","25.00","25.00" ) ; nINSERT INTO detallecompra VALUES("13","7","11.00","450.00","4950.00" ) ; nINSERT INTO detallecompra VALUES("14","3","12.00","322.58","3870.96" ) ; nINSERT INTO detallecompra VALUES("15","3","7.00","322.58","2258.06" ) ; nnnnDROP TABLE detallepedido;nnCREATE TABLE `detallepedido` (
  `IdPedido` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `Cantidad` decimal(8,2) DEFAULT NULL,
  `Precio` decimal(8,2) DEFAULT NULL,
  `Total` decimal(8,2) DEFAULT NULL,
  KEY `fk_DetallePedido_Pedido1` (`IdPedido`),
  KEY `fk_DetallePedido_Producto1` (`IdProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;nnnnnDROP TABLE detalleventa;nnCREATE TABLE `detalleventa` (
  `IdVenta` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `Cantidad` decimal(8,2) NOT NULL,
  `Costo` decimal(8,2) NOT NULL,
  `Precio` decimal(8,2) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  KEY `fk_DetalleVenta_Producto1_idx` (`IdProducto`),
  KEY `fk_DetalleVenta_Venta1_idx` (`IdVenta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;nnINSERT INTO detalleventa VALUES("1","3","3.00","322.58","482.24","1446.72" ) ; nINSERT INTO detalleventa VALUES("1","2","5.00","25.00","45.00","225.00" ) ; nINSERT INTO detalleventa VALUES("2","4","1.00","40.00","40.00","40.00" ) ; nINSERT INTO detalleventa VALUES("3","2","1.00","25.00","45.00","45.00" ) ; nINSERT INTO detalleventa VALUES("4","2","1.00","25.00","45.00","45.00" ) ; nINSERT INTO detalleventa VALUES("5","3","3.00","322.58","482.24","1446.72" ) ; nINSERT INTO detalleventa VALUES("5","2","1.00","25.00","45.00","45.00" ) ; nINSERT INTO detalleventa VALUES("6","2","1.00","25.00","45.00","45.00" ) ; nINSERT INTO detalleventa VALUES("7","4","3.00","40.00","40.00","120.00" ) ; nINSERT INTO detalleventa VALUES("7","5","1.00","2.00","2.00","2.00" ) ; nINSERT INTO detalleventa VALUES("8","2","2.00","25.00","45.00","90.00" ) ; nINSERT INTO detalleventa VALUES("9","2","2.00","25.00","50.00","100.00" ) ; nINSERT INTO detalleventa VALUES("9","3","3.00","328.58","482.24","1446.72" ) ; nINSERT INTO detalleventa VALUES("10","2","3.00","25.00","45.00","135.00" ) ; nINSERT INTO detalleventa VALUES("11","2","2.00","25.00","45.00","90.00" ) ; nINSERT INTO detalleventa VALUES("12","2","2.00","25.00","45.00","90.00" ) ; nINSERT INTO detalleventa VALUES("13","2","4.00","25.00","45.00","180.00" ) ; nINSERT INTO detalleventa VALUES("14","5","1.00","2.00","2.00","2.00" ) ; nINSERT INTO detalleventa VALUES("15","4","1.00","40.00","40.00","40.00" ) ; nINSERT INTO detalleventa VALUES("15","1","1.00","80.00","100.00","100.00" ) ; nINSERT INTO detalleventa VALUES("16","3","1.00","322.58","482.24","482.24" ) ; nINSERT INTO detalleventa VALUES("17","1","1.00","80.00","100.00","100.00" ) ; nINSERT INTO detalleventa VALUES("18","7","1.00","450.00","890.00","890.00" ) ; nINSERT INTO detalleventa VALUES("19","8","1.00","15.00","35.00","35.00" ) ; nINSERT INTO detalleventa VALUES("20","3","1.00","322.58","482.24","482.24" ) ; nINSERT INTO detalleventa VALUES("21","10","1.00","20.00","45.00","45.00" ) ; nINSERT INTO detalleventa VALUES("22","4","2.00","40.00","85.00","170.00" ) ; nINSERT INTO detalleventa VALUES("23","3","2.00","322.58","482.24","964.48" ) ; nINSERT INTO detalleventa VALUES("24","11","1.00","25.00","55.00","55.00" ) ; nINSERT INTO detalleventa VALUES("25","3","7.00","322.58","482.24","3375.68" ) ; nnnnDROP TABLE empleado;nnCREATE TABLE `empleado` (
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(80) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `FechaNac` date NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `Dni` varchar(8) DEFAULT NULL,
  `FechaIng` date NOT NULL,
  `Sueldo` decimal(8,2) DEFAULT NULL,
  `Estado` varchar(30) NOT NULL,
  `Usuario` varchar(20) DEFAULT NULL,
  `Contrasena` text,
  `IdTipoUsuario` int(11) NOT NULL,
  PRIMARY KEY (`IdEmpleado`),
  KEY `fk_Empleado_TipoUsuario1_idx` (`IdTipoUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;nnINSERT INTO empleado VALUES("1","Yessenia Yadira","Ipanaque Aparacana","F","1986-07-05"," prolongacion - tacna -chancay","013773722","993303412","yesseniai17@hotmail.com","46082558","2017-01-05","2500.00","ACTIVO","administrador","21232f297a57a5a743894a0e4a801fc3","1" ) ; nINSERT INTO empleado VALUES("2","Jhon","muñoz","M","1979-01-01","chancay","997672594","997672594","jhon_dmc@hotmail.com","40636446","2017-01-02","2500.00","ACTIVO","vendedor","12345678","2" ) ; nINSERT INTO empleado VALUES("5","Juan ","Alfaro","M","1987-12-12","Av. Tacna 152","5113773744","999941758","juanalfaro@hotmail.com","42474174","2017-01-01","1200.00","ACTIVO","vendedor","0407e8c8285ab85509ac2884025dcf42","2" ) ; nINSERT INTO empleado VALUES("6","Pedro","Campo","M","1986-02-12","Calle Lopez de Zuñiga # 127","","949391921","pedrocampos@gmail.com","15272122","2017-01-01","1200.00","ACTIVO","pedrocampo","46769ff35449ada94bccda034472fcce","2" ) ; nnnnDROP TABLE pedido;nnCREATE TABLE `pedido` (
  `IdPedido` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) NOT NULL,
  `Fecha_solicitud` datetime DEFAULT NULL,
  `Fecha_entrega` datetime DEFAULT NULL,
  `Total` decimal(8,2) DEFAULT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdPedido`),
  KEY `fk_Pedido_Cliente1` (`IdCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;nnnnnDROP TABLE producto;nnCREATE TABLE `producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(50) DEFAULT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Stock` decimal(8,2) DEFAULT NULL,
  `StockMin` decimal(8,2) DEFAULT NULL,
  `PrecioCosto` decimal(8,2) DEFAULT NULL,
  `PrecioVenta` decimal(8,2) DEFAULT NULL,
  `Utilidad` decimal(8,2) DEFAULT NULL,
  `Estado` varchar(30) NOT NULL,
  `Imagen` varchar(100) DEFAULT NULL,
  `IdCategoria` int(11) NOT NULL,
  PRIMARY KEY (`IdProducto`),
  KEY `fk_Producto_Categoria_idx` (`IdCategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;nnINSERT INTO producto VALUES("1","000511","Monitor","monitor LCD pantalla de retina liquida","8.00","2.00","80.00","100.00","20.00","ACTIVO","","1" ) ; nINSERT INTO producto VALUES("2","000422","Teclado Multifuncional","Teclado ergonomico","196.00","3.00","25.00","45.00","20.00","ACTIVO","","1" ) ; nINSERT INTO producto VALUES("3","000433","CPU","Unidad Central de Procesamiento","61.00","5.00","322.58","482.24","159.66","ACTIVO","","1" ) ; nINSERT INTO producto VALUES("4","000567","Mouse Inalambrico","Inalambrico","53.00","50.00","40.00","85.00","45.00","ACTIVO","mouse.jpg","1" ) ; nINSERT INTO producto VALUES("7","000458","monitor 4k  LG","monitor LG profesional plus","160.00","5.00","450.00","890.00","440.00","ACTIVO","","1" ) ; nINSERT INTO producto VALUES("8","000892","Parlantes micronics","parlantes standar","184.00","5.00","15.00","35.00","20.00","ACTIVO","","2" ) ; nINSERT INTO producto VALUES("9","000785","ESET NOD32 ANTIVIRUS","NOD32 ANTIVIRUS VER.10.45","36.00","5.00","15.00","85.00","70.00","ACTIVO","","6" ) ; nINSERT INTO producto VALUES("10","000145","mouse gamer","mouse para juego","70.00","5.00","20.00","45.00","25.00","ACTIVO","","2" ) ; nINSERT INTO producto VALUES("11","000852","router 4G","router","35.00","2.00","25.00","55.00","30.00","ACTIVO","","3" ) ; nnnnDROP TABLE proveedor;nnCREATE TABLE `proveedor` (
  `IdProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Ruc` varchar(11) DEFAULT NULL,
  `Dni` varchar(8) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `Cuenta1` varchar(50) DEFAULT NULL,
  `Cuenta2` varchar(50) DEFAULT NULL,
  `Estado` varchar(30) NOT NULL,
  `Obsv` text,
  PRIMARY KEY (`IdProveedor`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;nnINSERT INTO proveedor VALUES("1","SINPROVEEDOR","20122211212","09121121","Lima","3451212","945217111","ramiro@hotmail.com","","","ACTIVO","Proveedor Lima" ) ; nINSERT INTO proveedor VALUES("2","INVERSIONES G&Z SAC","20432698864","","LIMA","75926345","997652354","inversionesgyz@gmail.com","1256412316545462","","ACTIVO","proveedor de tecnología y software" ) ; nINSERT INTO proveedor VALUES("3","NORTON PERU EIRL","20406598457","","LIMA","3452154","9336415122","nortonperu@yahoo.com","785512455212","","ACTIVO","proveedor de software" ) ; nINSERT INTO proveedor VALUES("4","NOKIA PERU SAC","20452636564","","LIMA","3511561 -3","998685964","nokiaperu@gmail.com","452121221287","","ACTIVO","provedorde telecomunicaciones" ) ; nINSERT INTO proveedor VALUES("5","MICRONICS SAC","20496565892","","MIRAFLORES 185 -LIMA","32151611","965342564","micronicsworld@yahoo.com","125641122121","","ACTIVO","proveedor de tecnologia" ) ; nINSERT INTO proveedor VALUES("6","JUAN MARTINEZ SALVADOR","20463656986","","pandero 174 -TACNA","5232311","995623214","juanm@yahoo.com","4156452121","","ACTIVO","suministros tecnológico " ) ; nnnnDROP TABLE tipodocumento;nnCREATE TABLE `tipodocumento` (
  `IdTipoDocumento` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`IdTipoDocumento`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;nnINSERT INTO tipodocumento VALUES("1","BOLETA" ) ; nINSERT INTO tipodocumento VALUES("2","FACTURA" ) ; nINSERT INTO tipodocumento VALUES("3","TICKET" ) ; nnnnDROP TABLE tipousuario;nnCREATE TABLE `tipousuario` (
  `IdTipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`IdTipoUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;nnINSERT INTO tipousuario VALUES("1","ADMINISTRADOR" ) ; nINSERT INTO tipousuario VALUES("2","VENDEDOR" ) ; nINSERT INTO tipousuario VALUES("3","ALMACENERO" ) ; nnnnDROP TABLE venta;nnCREATE TABLE `venta` (
  `IdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoDocumento` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `Serie` varchar(5) DEFAULT NULL,
  `Numero` varchar(20) DEFAULT NULL,
  `Fecha` date NOT NULL,
  `TotalVenta` decimal(8,2) NOT NULL,
  `Igv` decimal(8,2) NOT NULL,
  `TotalPagar` decimal(8,2) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `fk_Venta_TipoDocumento1_idx` (`IdTipoDocumento`),
  KEY `fk_Venta_Cliente1_idx` (`IdCliente`),
  KEY `fk_Venta_Empleado1_idx` (`IdEmpleado`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;nnINSERT INTO venta VALUES("1","1","1","1","001","V0000000001","2015-04-20","1416.71","255.01","1671.72","EMITIDO" ) ; nINSERT INTO venta VALUES("2","1","1","1","001","V0000000002","2015-04-20","33.90","6.10","40.00","EMITIDO" ) ; nINSERT INTO venta VALUES("3","1","1","1","001","V0000000003","2015-04-20","38.14","6.87","45.00","EMITIDO" ) ; nINSERT INTO venta VALUES("4","1","1","1","001","V0000000004","2015-04-20","38.14","6.87","45.00","EMITIDO" ) ; nINSERT INTO venta VALUES("5","1","1","1","001","V0000000005","2015-04-20","1264.17","227.55","1491.72","EMITIDO" ) ; nINSERT INTO venta VALUES("6","1","1","1","001","V0000000006","2015-04-20","38.14","6.87","45.00","EMITIDO" ) ; nINSERT INTO venta VALUES("7","1","1","1","001","V0000000007","2015-04-21","103.39","18.61","122.00","EMITIDO" ) ; nINSERT INTO venta VALUES("8","1","1","1","001","V0000000008","2015-04-22","76.27","13.73","90.00","EMITIDO" ) ; nINSERT INTO venta VALUES("9","1","1","1","C0000","V0000000008","2015-05-12","68.50","18.50","70.00","EMITIDO" ) ; nINSERT INTO venta VALUES("10","2","1","1","001","V0000000010","2015-04-23","114.41","20.59","135.00","EMITIDO" ) ; nINSERT INTO venta VALUES("11","1","1","1","001","V0000000011","2015-04-23","76.27","13.73","90.00","EMITIDO" ) ; nINSERT INTO venta VALUES("12","1","1","1","001","V0000000012","2015-04-23","76.27","13.73","90.00","EMITIDO" ) ; nINSERT INTO venta VALUES("13","1","1","1","001","V0000000013","2015-04-23","152.54","27.46","180.00","EMITIDO" ) ; nINSERT INTO venta VALUES("14","1","1","1","001","V0000000014","2015-04-26","1.69","0.30","2.00","EMITIDO" ) ; nINSERT INTO venta VALUES("15","1","1","1","001","V0000000015","2017-07-01","118.64","21.36","140.00","EMITIDO" ) ; nINSERT INTO venta VALUES("16","1","1","1","001","V0000000016","2017-07-01","408.68","73.56","482.24","EMITIDO" ) ; nINSERT INTO venta VALUES("17","2","1","1","002","V0000000017","2017-07-01","84.75","15.26","100.00","EMITIDO" ) ; nINSERT INTO venta VALUES("18","2","1","1","002","V0000000018","2017-07-01","754.24","135.76","890.00","EMITIDO" ) ; nINSERT INTO venta VALUES("19","1","1","1","002","V0000000019","2017-07-01","29.66","5.34","35.00","EMITIDO" ) ; nINSERT INTO venta VALUES("20","1","2","1","002","V0000000020","2017-07-01","408.68","73.56","482.24","EMITIDO" ) ; nINSERT INTO venta VALUES("21","1","2","1","002","V0000000021","2017-07-02","38.14","6.87","45.00","EMITIDO" ) ; nINSERT INTO venta VALUES("22","1","1","1","002","V0000000022","2017-07-02","144.07","25.93","170.00","EMITIDO" ) ; nINSERT INTO venta VALUES("23","1","1","1","002","V0000000023","2017-08-05","817.36","147.12","964.48","EMITIDO" ) ; nINSERT INTO venta VALUES("24","1","1","1","002","V0000000024","2017-08-13","46.61","8.39","55.00","EMITIDO" ) ; nINSERT INTO venta VALUES("25","1","1","1","002","V0000000025","2017-08-16","2860.75","514.94","3375.68","EMITIDO" ) ; nnnn
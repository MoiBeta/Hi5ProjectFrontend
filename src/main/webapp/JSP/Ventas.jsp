<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes</title>
    <!-- Bootstrap CSS para aplicar diseño a el formulario -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="icon" href="img/logo.ico" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <!--Data tables para que tengan estilo-->
    <link rel="stylesheet" type="text/css" href="./DataTables/datatables.min.css" />
    <link rel="stylesheet" type="text/css" href="./DataTables/css/dataTables.bootstrap.min.css" />
</head>
<body>
<div class="jumbotron row" id=encabezado>
        <!--Jumbotron -->
        <h1 id="encabezado">
            <a class=" nav-link active " href="index.jsp" style="color:#ffffff; "><img id="logox" src="img/logo.png"> Hi5tronix
            </a>
        </h1>
    </div>
    <nav class="navbar navbar-expand navbar-light bg-light ">
        <div class="container-fluid ">
            <div class="collapse navbar-collapse " id="menuPrincipal ">
                <ul class="navbar-nav ">
                    <li class="nav-item ">
                        <a class="nav-link " href="usuario.jsp">Usuarios</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Cliente.jsp">Clientes</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="proveedor.jsp">Proveedores</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="Productos.jsp">Productos</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active " href="Ventas.jsp">Ventas</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="Reportes.jsp">Reportes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
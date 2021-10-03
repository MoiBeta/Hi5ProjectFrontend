<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <!-- Bootstrap CSS para aplicar diseño a el formulario -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="icon" href="img/logo.ico" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

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
                        <a class="nav-link " href="Clientes.jsp">Clientes</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="proveedor.jsp">Proveedores</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active" href="#produ">Productos</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="Ventas.jsp">Ventas</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="Reportes.jsp">Reportes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <section id="produ">
        <div class="d-flex">
            <div class="card col-sm-12" style="border:none;">
                <div class="card-body">
                    <form id="formLogin " action=" " method="POST " class="align-content-center " align="center ">
                        <h1 style="color: grey; ">Cargue los productos por un archivo .csv</h1>
                        <div class="mb-3 row ">
                            <label class="col-sm-3 col-form-label ">Archivo</label>
                            <div class="col-sm-8">
                                <input type="file" class="form-control " placeholder="Nombre del producto" accept=".csv" required>
                            </div>
                        </div>
                        <button type="button" class="btn btn-secondary align-bottom" id="botonExaminar">Examinar</button>
                </div>
                <div class="align-self-center">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Nit proveedor</th>
                            <th>Precio</th>
                            <th>Iva</th>
                            <th>Precio Venta</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Celular 3x</td>
                            <td>123456</td>
                            <td>$185.000</td>
                            <td>$15.000</td>
                            <td>$200.000</td>
                        </tr>

                    </tbody>
                </table>
                </div>

                </form>
            </div>
        </div>
    </section>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js " integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ " crossorigin="anonymous "></script>


</html>
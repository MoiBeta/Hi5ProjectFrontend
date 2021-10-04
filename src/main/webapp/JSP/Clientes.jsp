<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes2</title>
    <!-- Bootstrap CSS para aplicar dise�o a el formulario -->
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
                        <a class="nav-link active " href="#Cliente">Clientes</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="proveedor.jsp">Proveedores</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="Productos.jsp">Productos</a>
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
    <section id="Cliente">
        <div class="d-flex">
            <div class="card col-sm-4" style="border:none;">
                <div class="card-body">
                    <form id="formLogin" action=" " method="POST" class="align-content-center" align="center">
                        <h1 style="color: grey; "></h1>

                        <div class="mb-3 row ">
                            <label class="col-sm-3 col-form-label ">C�dula</label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control " placeholder="123" required>
                            </div>
                        </div>
                        <div class="mb-3 row ">
                            <label class="col-sm-3 col-form-label ">Nombre</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control " placeholder="Nombre del producto" required>
                            </div>
                        </div>
                        <div class="mb-3 row ">
                            <label class="col-sm-3 col-form-label ">Direcci�n</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control " placeholder="CRRA 13B" required>
                            </div>
                        </div>
                        <div class="mb-3 row ">
                            <label class="col-sm-3 col-form-label ">Tel�fono</label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control " placeholder="313852651" required>
                            </div>
                        </div>
                        <div class="mb-3 row ">
                            <label class="col-sm-3 col-form-label ">Email</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control " placeholder="celularcitos@sanandresito.com" required>
                            </div>
                        </div>
                        <button type="button" class="btn btn-secondary align-bottom" id="boton2">Crear</button>
                        <button type="button" class="btn btn-secondary align-bottom" id="boton2">Actualizar</button>
                </div>

                </form>
            </div>

            <div class="col-sm-7">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>C�dula</th>
                            <th>Nombre</th>
                            <th>Direcci�n</th>
                            <th>Telefono</th>
                            <th>Correo Electr�nico</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>13451</td>
                            <td>Celularcitos</td>
                            <td>Cll 13b </td>
                            <td>3138587372</td>
                            <td>celularcitos@sanandresito.com</td>
                            <td>
                                <!--boton Actualizar-->
                                <a class="btn btn-warning" href=""><i class="bi bi-pencil-square"></i></a>
                                <!--boton eliminar-->
                                <a class="btn btn-danger" href=""><i class="bi bi-trash-fill"></i></a>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </section>
</body>
</html>
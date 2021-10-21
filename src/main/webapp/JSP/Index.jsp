<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hi5tronix</title>
    <!-- Bootstrap CSS para aplicar diseño a el formulario -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="icon" href="img/logo.ico"/>
</head>

<body>


    <div class="jumbotron row">
        <!--Jumbotron -->

        <h1 id=encabezado>
            <a class=" nav-link active " href="#home " style="color:#ffffff; "><img id="logox" src="./img/logo.png"> Hi5Tronix
            </a>
        </h1>
    </div>
    <nav class="navbar navbar-expand navbar-light bg-light ">
        <div class="container-fluid ">
            <div class="collapse navbar-collapse " id="menuPrincipal ">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link " href="Hi5Servlet?accion=listar&tipo=usuarios">Usuarios</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="Hi5Servlet?accion=listar&tipo=clientes">Clientes</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="./JSP/proveedor.jsp">Proveedores</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="./JSP/Productos.jsp">Productos</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="./JSP/Ventas.jsp">Ventas</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="./JSP/Reportes.jsp">Reportes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <section id="home">
        <div id="carouselControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="./JSP/img/tecno.jpg" alt="Primer slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./JSP/img/chips.png" alt="Segundo slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./JSP/img/idea.jpg" alt="Tercero slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./JSP/img/idea2.jpg" alt="Cuarto slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./JSP/img/tecnologia.jpg" alt="Cuarto slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carouselControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Siguiente</span>
            </a>
        </div>
    </section id="tarjetas">
    <div class="d-flex flex-wrap flex-row-reverse">
        <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
            <img class="card-img-top" src="./JSP/img/chips.png" alt="Responsive image">
            <div class="card-body">
                <h5 class="card-title">CHIP</h5>

                <h6 class="card-subtitle text-muted">Proceso</h6>
                <p class="card-text">Es un producto...</p>
            </div>
            <div>
                <button class="btn btn-primary btn-reserva"><span class="oi oi-plus footer-address-icon" style="color: white;"></span>Comprar</button>
            </div>
        </div>
        <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
            <img class="card-img-top" src="./JSP/img/idea.jpg" alt="Responsive image">
            <div class="card-body">
                <h5 class="card-title" data-toggle="tooltip" data-placement="top" title="Las primeras reservas cuentan con clases de tango gratís">Nombre</h5>
                <h6 class="card-subtitle text-muted">Nombre del producto</h6>
                <p class="card-text">Describir para que sirve el producto</p>
            </div>
            <div>
                <button class="btn btn-primary btn-reserva"><span class="oi oi-plus footer-address-icon" style="color: white;"></span>Comprar</button>
            </div>
        </div>
        <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
            <img class="card-img-top" src="./JSP/img/idea2.jpg" alt="Responsive image">
            <div class="card-body">
                <h5 class="card-title">Nombre </h5>
                <h6 class="card-subtitle text-muted">Caracteristica</h6>
                <p class="card-text">Descripción</p>
            </div>
            <div>
                <button class="btn btn-primary btn-reserva "><span class="oi oi-plus footer-address-icon" style="color: white;"></span>Comprar</button>
            </div>
        </div>
        <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
            <img class="card-img-top" src="./JSP/img/idea.jpg" alt="Responsive image">
            <div class="card-body">
                <h5 class="card-title" data-toggle="tooltip" data-placement="top" title="Las primeras reservas cuentan con clases de tango gratís">Nombre</h5>
                <h6 class="card-subtitle text-muted">Nombre del producto</h6>
                <p class="card-text">Describir para que sirve el producto</p>
            </div>
            <div>
                <button class="btn btn-primary btn-reserva"><span class="oi oi-plus footer-address-icon" style="color: white;"></span>Comprar</button>
            </div>
        </div>
        <!--Otra tarjeta-->
        <div class="d-flex flex-wrap flex-row-reverse">
            <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
                <img class="card-img-top" src="./JSP/img/chips.png" alt="Responsive image">
                <div class="card-body">
                    <h5 class="card-title">CHIP</h5>

                    <h6 class="card-subtitle text-muted">Proceso</h6>
                    <p class="card-text">Es un producto...</p>
                </div>
                <div>
                    <button class="btn btn-primary btn-reserva"><span class="oi oi-plus footer-address-icon" style="color: white;"></span> comprar</button>
                </div>
            </div>


            <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
                <img class="card-img-top" src="./JSP/img/idea.jpg" alt="Responsive image">
                <div class="card-body">
                    <h5 class="card-title" data-toggle="tooltip" data-placement="top" title="Las primeras reservas cuentan con clases de tango gratís">Nombre</h5>
                    <h6 class="card-subtitle text-muted">Nombre del producto</h6>
                    <p class="card-text">Describir para que sirve el producto</p>
                </div>
                <div>
                    <button class="btn btn-primary btn-reserva"><span class="oi oi-plus footer-address-icon" style="color: white;"></span>Comprar</button>
                </div>
            </div>
            <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
                <img class="card-img-top" src="./JSP/img/idea2.jpg" alt="Responsive image">
                <div class="card-body">
                    <h5 class="card-title">Nombre</h5>
                    <h6 class="card-subtitle text-muted">Caracteristica</h6>
                    <p class="card-text">Descripción</p>
                </div>
                <div>
                    <button class="btn btn-primary btn-reserva "><span class="oi oi-plus footer-address-icon" style="color: white;"></span>Comprar</button>
                </div>
            </div>
            <div class="card card-hotel d-flex flex-column justify-content-between ml-2">
                <img class="card-img-top" src="./JSP/img/idea.jpg" alt="Responsive image">
                <div class="card-body">
                    <h5 class="card-title" data-toggle="tooltip" data-placement="top" title="Las primeras reservas cuentan con clases de tango gratís">Nombre</h5>
                    <h6 class="card-subtitle text-muted">Nombre del producto</h6>
                    <p class="card-text">Describir para que sirve el producto</p>
                </div>
                <div>
                    <button class="btn btn-primary btn-reserva"><span class="oi oi-plus footer-address-icon" style="color: white;"></span>Comprar</button>
                </div>
            </div>

            </section>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js "></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js "></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js "></script>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>	
	
<%@page import="hi5package.Usuarios"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Usuarios</title>
<!-- Bootstrap CSS para aplicar diseño a el formulario -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/estilo.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<link rel="icon" href="img/logo.ico" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>


<body>

	<div class="jumbotron row" id=encabezado>
		<!--Jumbotron -->
		<h1 id="encabezado">
			<a class=" nav-link active " href="index.jsp" style="color: #ffffff;"><img
				id="logox" src="img/logo.png"> Hi5tronix </a>
		</h1>
	</div>
	<nav class="navbar navbar-expand navbar-light bg-light ">
		<div class="container-fluid ">
			<div class="collapse navbar-collapse " id="menuPrincipal ">
				<ul class="navbar-nav ">
					<li class="nav-item "><a class="nav-link active " href="#usua">Usuarios</a>
					</li>
					<li class="nav-item "><a class="nav-link " href="Clientes.jsp">Clientes</a>
					</li>
					<li class="nav-item "><a class="nav-link "
						href="proveedor.jsp">Proveedores</a></li>
					<li class="nav-item "><a class="nav-link "
						href="Productos.jsp">Productos</a></li>
					<li class="nav-item "><a class="nav-link " href="Ventas.jsp">Ventas</a>
					</li>
					<li class="nav-item "><a class="nav-link " href="Reportes.jsp">Reportes</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<section id="usua ">
		<div class="d-flex">
			<div class="card col-sm-4" style="border: none;">
				<div class="card-body">
					<form id="formLogin" action="Controlador" method="post" class="align-content-center" align="center">
						<h1 style="color: grey;"></h1>

						<div class="mb-3 row ">
							<label class="col-sm-3 col-form-label ">Cedula</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" name="txtcedula"
									placeholder="" required
									value="${usuarioSelec.getCedula_usuario()}">
							</div>
						</div>
						<div class="mb-3 row ">
							<label class="col-sm-3 col-form-label ">Nombre</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="txtnombre"
									placeholder="" required
									value="${usuarioSelec.getNombre_usuario()}">
							</div>
						</div>

						<div class="mb-3 row ">
							<label class="col-sm-3 col-form-label ">Email</label>
							<div class="col-sm-8">
								<input type="email" class="form-control" name="txtemail"
									placeholder="correo@hotmail.com " required
									value="${usuarioSelec.getEmail_usuario()}">
							</div>
						</div>

						<div class="mb-3 row ">
							<label class="col-sm-3 col-form-label ">Usuario</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="txtusuario"
									placeholder="" required value="${usuarioSelec.getUsuario()}">
							</div>
						</div>
						<div class="mb-3 row ">
							<label class="col-sm-3 col-form-label ">Password</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" name="txtpassword"
									placeholder="Password " required
									value="${usuarioSelec.getPassword()}">
							</div>
						</div>

						<button type="button " class="btn btn-secondary align-bottom"
							id="boton2">Crear</button>
						<button type="button " class="btn btn-secondary align-bottom"
							id="boton2">Actualizar</button>
				</div>

				</form>
			</div>

			<div class="col-sm-7">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Cedula</th>
							<th>Nombre Completo</th>
							<th>Usuario</th>
							<th>Correo Electronico</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<Usuarios> lista = (ArrayList<Usuarios>) request.getAttribute("lista");
							for (Usuarios usuario : lista) {
						%>
						<tr>
							<td><%=usuario.getCedula_usuario()%></td>
							<td><%=usuario.getNombre_usuario()%></td>
							<td><%=usuario.getEmail_usuario()%></td>
							<td><%=usuario.getUsuario()%></td>
							<td>
								<!--boton Actualizar--> 
								<a class="btn btn-warning" href=""><i
								class="bi bi-pencil-square"></i></a> <!--boton eliminar--> <a
								class="btn btn-danger" href=""><i class="bi bi-trash-fill"></i></a>
							</td>
						</tr>
						<%
                    	}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</section>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js "
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ "
	crossorigin="anonymous "></script>
<!--Data Tables-->
<script type="text/javascript" src="./DataTables/datatables.min.js"></script>

</html>

</html>
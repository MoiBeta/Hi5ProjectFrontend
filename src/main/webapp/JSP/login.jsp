<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> <!--html5-->
<html lang="es"> <!--abre archivo html-->
    <head>
        <meta charset="utf-8"> <!--codigo visualizar cáracteres especiles-->
        <title>Hi5Tronix</title> <!--nombre pestaña-->
        <link rel="stylesheet" href="css/master.css"> <!--busca archivo, dirección css-->
        <link rel="icon" href="img/logoico.ico">
    </head>
    
    <body> <!--todo lo que se muestra en la web-->
        <div class="login-box"> <!--contenedor login-->
        <img class="avatar" src="img/logo.png" alt="logo">
        <h1>Hi5tronix</h1>
        <form class="form-sign" method="get" action="../Hi5Servlet">
            <!--Usuario-->
            <label for="Usuario">Username</label>
            <input type="text" placeholder="Escriba usuario" name="txtusuario"
							class="form-control">
            <!--Contraseña-->
            <pr>
            <label for="Contraseña">Password</label> <!--texto acompaña el input-->
            <input type="password" placeholder="Escriba contraseña" name="txtpassword" class="form-control">    
            </pr>
           
            

            <input id="ingreso" type="submit" value="Ingresar" name= "accion"> <!--boton acceso-->
            <input id="cancelar" type="submit" value="Cancelar">
            <a href="#">Perdí Mi Contraseña</a>
            <a href="#">No Tengo Cuenta</a>

            
        </form>
        </div>
    
    </body>


</html>
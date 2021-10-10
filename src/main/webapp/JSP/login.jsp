<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> <!--html5-->
<html lang="es"> <!--abre archivo html-->
    <head>
        <meta charset="utf-8"> <!--codigo visualizar c�racteres especiles-->
        <title>Hi5Tronix</title> <!--nombre pesta�a-->
        <link rel="stylesheet" href="css/master.css"> <!--busca archivo, direcci�n css-->
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
            <!--Contrase�a-->
            <pr>
            <label for="Contrase�a">Password</label> <!--texto acompa�a el input-->
            <input type="password" placeholder="Escriba contrase�a" name="txtpassword" class="form-control">    
            </pr>
           
            

            <input id="ingreso" type="submit" value="Ingresar" name= "accion"> <!--boton acceso-->
            <input id="cancelar" type="submit" value="Cancelar">
            <a href="#">Perd� Mi Contrase�a</a>
            <a href="#">No Tengo Cuenta</a>

            
        </form>
        </div>
    
    </body>


</html>
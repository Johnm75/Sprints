<%@page import="controlador.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="CSS/Login.css">
</head>
<body>

<%

Conexion con= new Conexion();
con.conexionbd();
%>


  <header class="contenido">
       
		<legend>BIENVENIDOS A LA TIENDA GENERICA</legend>
        <fieldset>
            <form action="Login" method="get">
                <label for="">Usuario: 
                    <input type="text" name="user">
                </label>
                <label for="">Contraseņa: 
                    <input type="password" name="pass">
                </label>
                <button type="submit" name="btnAceptar">Aceptar</button>
                <button type="submit" name = "btnCancelar">Cancelar</button>
            </form>
        </fieldset>
    </header>
    
</body>
</html>
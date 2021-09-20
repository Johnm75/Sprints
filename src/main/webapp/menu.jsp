<%@page import="controlador.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIENDA GENERICA</title>
<link rel="stylesheet" href="CSS/Usuarios.css">
</head>
<body>

<%
Conexion con= new Conexion();
con.conexionbd();
%>

 <header class="cont-header" id="cont-header">
        <div class="logo-titulo" id="logo-titulo">
            <h1 class="h1" id="h1">TIENDA GENERICA</h1>
            <div class="logo" id="logo"></div>
        </div>
        <nav class="nav">
            <ul>
                <li><a href="Usuarios.html">Usuarios</a></li>
                <li><a href="tabla.html">Clientes</a></li>
                <li><a href="#">Provedores</a></li>
                <li><a href="#">Productos</a></li>
                <li><a href="#">Ventas</a></li>
                <li><a href="#">Reportes</a></li>
            </ul>
        </nav>

    </header>
    <header class="contenido">


        <fieldset>
            <form action="ServerletGestionusuario" method="post">
                <label for="">Cedula: 
                    <input type="text" name="Cedula">
                </label>
                <label for="">Nombre Completo: 
                    <input type="text" name="NombreCompleto">
                </label>
                <label for="">Correo Electronico: 
                    <input type="email" name="CorreoElectronico">
                </label>
                <label for="">Usuario: 
                    <input type="text" name="Usuario">
                </label>
                <label for="">Contraseņa: 
                    <input type="password" name="Contraseņa">
                </label>
                <button type="submit" name="btnConsultar">Consultar</button>
                <button type="submit" name="btnCrear">Crear</button>
                <button type="submit" name="btnActualizar">Actualizar</button>
                <button type="submit" name="btnEliminar">Borrar</button>
                
            </form>
        </fieldset>
    </header>
    
</body>
</html>
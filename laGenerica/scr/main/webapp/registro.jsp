<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/estilo1.css">
<link rel="stylesheet" href="css/estilo.css">
<link rel="stylesheet" href="css/menu.css">


<title>Formulario Registro Usuarios</title>
</head>

<body>
<header class="menu">
		<img src="img/Logo1.png" class="avatar1" alt="Avatar1 Image">
		<div class="container logo-nav-container">
			<a class="saludo">REGISTRO </a>
			<nav class="navigation">
				<a href="acceso.html" type="submit" class="nav-enlace"> SALIR</a>
			</nav>

		</div>
	</header>

	<section class="form-register">
		<div class="form-group">
			<img src="img/Logo1.png" class="avatar" alt="Avatar Image">

		</div>
		<h4>Formulario de Registro Usuarios</h4>


		<input
			class="controls" type="text" name="nombre_usuario"
			id="nombre_usuario" placeholder="Ingresar Nombre">
		<input class="controls" type="text" name="cedula_usario"
			id="cedula_usuario" placeholder="Ingresar # Cedula">
		 <input
			class="controls" type="email" name="email_usuario" id="email_usuario"
			placeholder="Ingresar  Correo">
		 <input class="controls" type="text" name="celular_usuario" id="celular_usuario"
			placeholder="Ingresar Celular"> 
			<input class="controls"	type="text" name="sucursal" id="sucursal"
			placeholder="Ingresar Sucursal">
			<input class="controls"	type="text" name="usuario" id="usuario"
			placeholder="Ingresar Usuario">
		<input class="controls"	type="text" name="contraseña" id="contraseña"
			placeholder="Ingresar Contraseña">
		<p>
			Estoy de acuerdo con <a>Terminos y Condiciones</a>
			<input style="opacity:1;" type="checkbox" data-required="1" name="terminos">
			
		</p>

		<table>
			<tr>
				<td>
					<button class="botons" type="submit" name="AgregarUsuario">AGREGAR</button>
					<button class="botons" type="submit" name="ListaUsuarios">LIMPIAR</button>
					
				</td>
			</tr>
		</table>

		
	</section>
</form>
</body>
</html>
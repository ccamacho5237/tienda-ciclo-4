<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/estilo1.css">
<link rel="stylesheet" href="css/menu.css">
<title>Formulario Registro Clientes</title>
</head>

<body>
<form method="post" action="./Servlet">
	<header class="menu">
		<img src="img/Logo1.png" class="avatar1" alt="Avatar1 Image">
		<div class="container logo-nav-container">
			<a class="saludo">Clientes </a>
			<nav class="navigation">
			<select class="nav-enlace" id="sucursal" size="0" required>
					<option value="sucursal">SUCURSAL</option>
					<option value="cali">CALI</option>
					<option value="medellin">MEDELLIN</option>
					<option value="bogota">BOGOTA</option>
				</select>
				  <a href="proveedores.jsp"
					type="submit" class="nav-enlace"> Proveedores</a> <a href="productos.jsp"
					type="submit" class="nav-enlace"> Productos</a> <a href="ventas.jsp"
					type="submit" class="nav-enlace"> Ventas</a> <a href="reportes"
					type="submit" class="nav-enlace"> Reportes</a><a href="registro.jsp"
					type="submit" class="nav-enlace"> Registro</a> <a href="acceso.html"
					type="submit" class="nav-enlace"> SALIR</a>
			</nav>

		</div>
	</header>

	<section class="form-register">
		<div class="form-group">
			<img src="img/Logo1.png" class="avatar" alt="Avatar Image">

		</div>
		<h4>Formulario de Registro Clientes</h4>


		<input class="controls" type="text" name="cedula_clientes"
			id="cedula_cliente" placeholder="Ingresar # Cedula"><input
			class="controls" type="text" name="nombre_cliente"
			id="nombre_cliente" placeholder="Ingresar Nombre"> <input
			class="controls" type="email" name="email_cliente" id="email_cliente"
			placeholder="Ingresar  Correo"> <input class="controls"
			type="text" name="celular_cliente" id="celular_cliente"
			placeholder="Ingresar Celular"> <input class="controls"
			type="text" name="direccion_cliente" id="direccion_cliente"
			placeholder="Ingresar Dirección"> 
		
		<table>
			<tr>
				<td>
					<button class="botons" type="submit" name="AgregarUsuario">Agregar</button>
					<button class="botons" type="submit" name="ListaUsuarios">Listar</button>
					<button class="botons" type="submit" name="ActualizarUsuario">Actualizar</button>
					<button class="botons" type="submit" name="EliminarUsuario">Eliminar</button>

				</td>
			</tr>
		</table>

		
	</section>
</form>
</body>
</html>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){

			function ruta(servicio){
				var getUrl = window.location;
				var baseUrl = getUrl.protocol + "//" + getUrl.hostname + ":5001/";
				
				return baseUrl+servicio;
			}
			$("#btnLimpiar").click(function(){
				$("#nombre_usuario").val("");
				$("#cedula_usuario").val("");
				$("#celular_usuario").val("");	
				$("#sucursal").val("");	
				$("#usuario").val("");	
				$("#contraseña").val("");	
			});
			
			$("#btnAgregar").click(function(){
				let url = ruta("agregarUsuario");
				let codigol = $("#nombre_usuario").val();
				let titulol = $("#cedula_usuario").val();
				let autorl = $("#celular_usuario").val();
				let autorl = $("#sucursal").val();
				let autorl = $("#usuario").val();
				let autorl = $("#contraseña").val();
				
				let usuario = {
						nombre_usuario: nombre_usuariol,
						cedula_usuario: cedula_usuariol,
						celular_usuario: celular_usuariol
						sucursa: sucursal
						usuario: usuariol
						contraseña: contraseñal
				}
				
				$.ajax({
					type: "POST",
					data: JSON.stringify(usuario),
					url: url,
					contentType: "application/json",
					success: function(){
						$("#respuesta").html("Se agrego usuario");;
					},
					error: function(){
						$("#respuesta").html("NO se pudo agregar el usuario !!");;
					}
				});
			});
			
						
		});
	</script>
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
		<input class="controls" type="number" name="cedula_usario"
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
					<button class="botons" type="submit" id="btnAgregar"name="AgregarUsuario">AGREGAR</button>
					<button class="botons" type="submit" id="btnLimpiar"name="LimpiarUsuario">LIMPIAR</button>
					
				</td>
			</tr>
		</table>

		
	</section>
</form>
</body>
</html>
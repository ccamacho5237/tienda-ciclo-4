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
				$("#nombre_usuario").val(0);
				$("#cedula_usuario").val("");
				$("#email_usuario").val("");	
				$("#celular_usuario").val("");	
				$("#sucursal").val("");	
				$("#usuario").val("");
				$("#contraseña").val("");	
			});
			
			$("#btnAgregar").click(function(){
				let url = ruta("crearLibro");
				let codigol = $("#nombre_usuario").val();
				let titulol = $("#cedula_usuario").val();
				let autorl = $("#email_usuario").val();
				let autorl = $("#celular_usuario").val();
				let autorl = $("#sucursal").val();
				let autorl = $("#usuario").val();
				let autorl = $("#contraseña").val();
				
				let usuario = {
						nombre_usuario: nombre_usuariol,
						cedula_usuario: cedula_usuariol,
						email_usuario: email_usuariol
						celular_usuario: celular_usuariol
						sucursal: sucursall
						usuario: usuario
						contraseña: contraseñal
						
				}
				
				$.ajax({
					type: "POST",
					data: JSON.stringify(libro),
					url: url,
					contentType: "application/json",
					success: function(){
						$("#respuesta").html("Se agrego usuario");;
					},
					error: function(){
						$("#respuesta").html("NO se pudo agregar usuario !!");;
					}
				});
			});
			
			$("#btnListar").click(function(){
				let url = ruta("listarUsuarios");
				$.get(url,function(data,status){
					if(data.length>0){
						let salida ="<table border='1'>";
						salida = salida + "<tr><th>NOMBRE</th><th>CEDULA</th><th>EMAIL</th><th>CELULAR</th><th>SUCURSAL</th><th>USUARIO</th><th>CONTRASEÑA</th></tr>"
						
						let longitud = data.length;
						for(let i=0;i<longitud;i++ ){
							salida = salida  + "<tr>";
							salida = salida  + "<td>"+data[i].nombre_usuario+"</td>";
							salida = salida  + "<td>"+data[i].cedula_usuario+"</td>";
							salida = salida  + "<td>"+data[i].email_usuario+"</td>";
							salida = salida  + "<td>"+data[i].celular_usuario+"</td>";
							salida = salida  + "<td>"+data[i].sucursal_usuario+"</td>";
							salida = salida  + "<td>"+data[i].contraseña_usuario+"</td>";
							salida = salida  + "</tr>";
						}
						salida = salida + "</table>";
						$("#elListado").html(salida);
					}
				});
			});
			
			$("#btnEliminar").click(function(){
				let url = ruta("eliminarUsuario");
				let codigol = $("#cedula_usuario").val();
				
				$.post(url,{cedula_usuario:cedula_usuariol},function(data,status){
					if (data==true){
						$("#respuesta").html("Usuario Eliminado.");
					}else{
						$("#respuesta").html("NO se elimino el usuario.");
					}
				});
			});
			
			$("#btnBuscar").click(function(){
				let url = ruta("buscarUsuario");
				let codigol = $("#cedula_usuario").val();
				$.post(url,{cedula_usuario:cedula_usuariol},function(data,status){
					if(data.length>0){
						$("#titulo").val(data[0].nombre_usuario);
						$("#autor").val(data[0].cedula_usuario);
						$("#autor").val(data[0].email_usuario);
						$("#autor").val(data[0].celular_usuario);
						$("#autor").val(data[0].sucursal);
						$("#autor").val(data[0].usuario);
						$("#autor").val(data[0].contraseña);
					}else{
						$("#respuesta").html("NO se encontro usuario.");
					}
				});
			});
			
			$("#btnActualizar").click(function(){
				let url = ruta("actualizarUsuario");
				
				let codigol = $("#nombre_usuario").val();
				let titulol = $("#cedula_usuario").val();
				let autorl = $("#email_usuario").val();
				let autorl = $("#celular_usuario").val();
				let autorl = $("#sucursal").val();
				let autorl = $("#usuario").val();
				let autorl = $("#contraseña").val();
				
				let usuario = {
						nombre_usuario: nombre_usuariol,
						cedula_usuario: cedula_usuariol,
						email_usuario: email_usuariol
						celular_usuario: celular_usuariol
						sucursal: sucursall
						usuario: usuario
						contraseña: contraseñal
				}
				
				$.ajax({
					type: "POST",
					data: JSON.stringify(libro),
					url: url,
					contentType: "application/json",
					success: function(){
						$("#respuesta").html("Se Actualizo usuario");;
					},
					error: function(){
						$("#respuesta").html("NO se pudo actualizar usuario!!");;
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
			<a class="saludo">USUARIOS </a>
			<nav class="navigation">
				 <a	href="clientes.jsp" type="submit" class="nav-enlace"> Clientes</a> <a href="proveedores.jsp"
					type="submit" class="nav-enlace"> Proveedores</a> <a href="subir_archivo.jsp"
					type="submit" class="nav-enlace"> Productos</a> <a href="ventas.jsp"
					type="submit" class="nav-enlace"> Ventas</a> <a href="reportes"
					type="submit" class="nav-enlace"> Reportes</a> <a href="acceso.html"
					type="submit" class="nav-enlace"> SALIR</a>
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
					<button class="botons" type="submit"  id="btnAgregar" name="AgregarUsuario">Agregar</button>
					<button class="botons" type="submit" id="btnListar" name="ListaUsuarios">Listar</button>
					<button class="botons" type="submit" id="btnActualizar" name="ActualizarUsuario">Actualizar</button>
					<button class="botons" type="submit" id="btnEliminar" name="EliminarUsuario">Eliminar</button>

				</td>
			</tr>
		</table>

		
	</section>
</form>
</body>
</html>
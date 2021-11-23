<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/estilo1.css">
<link rel="stylesheet" href="css/menu.css">
<title>Carga de Archivo</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		function ruta(servicio) {
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.hostname + ":5000/";

			return baseUrl + servicio;
		}

		$("#formularioArchivo").on("submit", function(e) {
			e.preventDefault();
			var f = $(this);
			let Url = ruta("importar");//http://localhost:5000/importar
			let archivo = $("#archivo")[0].files[0];
			var formData = new FormData();
			formData.append("archivo", archivo);

			$.ajax({
				url : Url,
				type : "POST",
				dataType : "jsp",
				data : formData,
				cache : false,
				contentType : false,
				processData : false
			}).done(function(res) {
				$("#respuesta").jsp("Respuesta: " + res);
			});
		});

	});
</script>
</head>
<body>

	<form method="post" enctype="multipart/form-data"
		id="formularioArchivo">

		<section class="form-register">


			<label for="archivo">Archivo</label> <input type="file"
				name="archivo" accept=".csv" id="archivo">
			<table>

				<tr>
					<td>

						<button id="cargar" class="botons" type="submit"
							name="AgregarArchivo">CARGAR</button>

					</td>
				</tr>

			</table>

		</section>



	</form>
	<p id="respuesta"></p>
</body>
</html>
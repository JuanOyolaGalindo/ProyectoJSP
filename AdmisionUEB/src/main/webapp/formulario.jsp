<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Registro</title>
<body>
	<script src="js/style.js"></script>
	<div class="p-3 mb-2 bg-black text-white">
		<p class="fs-2">
			<img
				src="https://alejandria.unbosque.edu.co/centrodiseno/careme/Logo_de_la_Universidad_El_Bosque_Blanco.png"
				class="img-thumbnail"
				style="width: 125px; background: transparent; border: 0">
			Universidad El Bosque - Registro de postulantes
		</p>
	</div>
	<form class="row g-3" method="POST" enctype="multipart/form-data"
		action="http://localhost:8080/AdmisionUEB/AspiranteServlet">
		<div class="col-12">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="inputNombre"
					placeholder="NombreCompleto" name="pnombre"> <label
					for="inputNombre">Nombre completo</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating mb-3">
				<input type="date" class="form-control" id="floatingEstrato"
					name="pfnacimiento" required> <label for="inputEstrato" >Fecha
					de nacimiento</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating">
				<select class="form-select" id="floatingEstrato"
					aria-label="Floating label select example" name="pestrato" required>
					<option selected>Seleccione su estrato</option>
					<option value="1">Uno</option>
					<option value="2">Dos</option>
					<option value="3">Tres</option>
					<option value="4">Cuatro</option>
					<option value="5">Cinco</option>
					<option value="6">Seis</option>
				</select> <label for="floatingEstrato">Estrato</label>
			</div>
		</div>
		<div class="row g-3">
			<div class="form-floating">
				<select class="form-select" id="floatingCarrera"
					aria-label="Floating label select example" name="pcarrera" required>
					<option selected>Seleccione la carrera</option>
					<option>Arquitectura</option>
					<option>Arte Dram�tico</option>
					<option>Artes Pl�sticas</option>
					<option>Dise�o Industrial</option>
					<option>Dise�o de Comunicaci�n</option>
					<option>Formaci�n Musical</option>
					<option>Arquitectura</option>
					<option>Arte Dram�tico</option>
					<option>Artes Pl�sticas</option>
					<option>Dise�o Industrial</option>
					<option>Dise�o de Comunicaci�n</option>
					<option>Formaci�n Musical</option>
					<option>Derecho</option>
					<option>Filosof�a</option>
					<option>Licenciatura en Educaci�n Infantil</option>
					<option>Psicolog�a</option>
					<option>Licenciatura en Biling�ismo con �nfasis en la
						Ense�anza del Ingl�s</option>
					<option>Int�rprete Profesional de la Lengua de Se�as
						Colombiana - Modalidad Virtual</option>
					<option>Administraci�n de Empresas</option>
					<option>Bioingenier�a</option>
					<option>Ingenier�a Ambiental</option>
					<option>Ingenier�a Electr�nica</option>
					<option>Ingenier�a Industrial</option>
					<option>Ingenier�a de Sistemas</option>
					<option>Negocios Internacionales</option>
					<option>Matem�ticas</option>
					<option>Estad�stica</option>
					<option>Contadur�a P�blica - Modalidad Virtual</option>
					<option>Finanzas - Modalidad Virtual</option>
					<option>Marketing y Transformaci�n Digital - Modalidad
						Virtual</option>
					<option>Econom�a - Modalidad Virtual</option>
					<option>Administraci�n de Negocios Sostenibles - Modalidad
						Virtual</option>
					<option>Pregrado de Administraci�n en Producci�n y
						Log�stica Internacional</option>
					<option>Biolog�a</option>
					<option>Enfermer�a</option>
					<option>Instrumentaci�n Quir�rgica</option>
					<option>Medicina</option>
					<option>Odontolog�a</option>
					<option>Optometr�a</option>
					<option>Qu�mica Farmac�utica</option>
				</select> <label for="floatingCarrera">Carrera</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="inputID"
					placeholder="NumeroIdentificaci�n" name="pid" required> <label
					for="inputNombre">N�mero de identificaci�n </label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating">
				<select class="form-select" id="floatingEstrato"
					aria-label="Floating label select example" name="phomologa"required>
					<option selected>�El estudiante es homologado?</option>
					<option>Si</option>
					<option>No</option>
				</select> <label for="floatingEstrato">Homologaci�n</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="mb-3">
				<label for="formFile" class="form-label">Seleccione la foto
					de identificaci�n </label> <input class="form-control" type="file"
					name="pfoto" id="formFile"
					accept="image/gif, image/png, image/jpeg" required>
			</div>
		</div>
		<div class="col-12">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="inputNombre"
					placeholder="NombreCompleto" name="pcolegioegr" required> <label
					for="inputNombre">Colegio del cual se grad�o</label>
			</div>
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-dark">Guardar</button>
		</div>
		</form>
		
</body>
</html>
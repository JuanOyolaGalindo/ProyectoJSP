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
	<form class="row g-3" method="GET" enctype="multipart/form-data"
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
				<input type="date" class="form-control" id="floatingEstrato" name="pfnacimiento">
				<label for="inputEstrato">Fecha de nacimiento</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating">
				<select class="form-select" id="floatingEstrato"
					aria-label="Floating label select example" name="pestrato">
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
					aria-label="Floating label select example" name="pcarrera">
					<option selected>Seleccione la carrera</option>
					<option value="1">Arquitectura</option>
					<option value="2">Arte Dram�tico</option>
					<option value="3">Artes Pl�sticas</option>
					<option value="4">Dise�o Industrial</option>
					<option value="5">Dise�o de Comunicaci�n</option>
					<option value="6">Formaci�n Musical</option>
					<option value="1">Arquitectura</option>
					<option value="2">Arte Dram�tico</option>
					<option value="3">Artes Pl�sticas</option>
					<option value="4">Dise�o Industrial</option>
					<option value="5">Dise�o de Comunicaci�n</option>
					<option value="6">Formaci�n Musical</option>
					<option value="7">Derecho</option>
					<option value="8">Filosof�a</option>
					<option value="9">Licenciatura en Educaci�n Infantil</option>
					<option value="10">Psicolog�a</option>
					<option value="11">Licenciatura en Biling�ismo con �nfasis
						en la Ense�anza del Ingl�s</option>
					<option value="12">Int�rprete Profesional de la Lengua de
						Se�as Colombiana - Modalidad Virtual</option>
					<option value="13">Administraci�n de Empresas</option>
					<option value="14">Bioingenier�a</option>
					<option value="15">Ingenier�a Ambiental</option>
					<option value="16">Ingenier�a Electr�nica</option>
					<option value="17">Ingenier�a Industrial</option>
					<option value="18">Ingenier�a de Sistemas</option>
					<option value="19">Negocios Internacionales</option>
					<option value="20">Matem�ticas</option>
					<option value="21">Estad�stica</option>
					<option value="22">Contadur�a P�blica - Modalidad Virtual</option>
					<option value="23">Finanzas - Modalidad Virtual</option>
					<option value="24">Marketing y Transformaci�n Digital -
						Modalidad Virtual</option>
					<option value="25">Econom�a - Modalidad Virtual</option>
					<option value="26">Administraci�n de Negocios Sostenibles
						- Modalidad Virtual</option>
					<option value="27">Pregrado de Administraci�n en
						Producci�n y Log�stica Internacional</option>
					<option value="28">Biolog�a</option>
					<option value="29">Enfermer�a</option>
					<option value="30">Instrumentaci�n Quir�rgica</option>
					<option value="31">Medicina</option>
					<option value="32">Odontolog�a</option>
					<option value="33">Optometr�a</option>
					<option value="34">Qu�mica Farmac�utica</option>
				</select> <label for="floatingCarrera">Carrera</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="inputID"
					placeholder="NumeroIdentificaci�n" name="pid"> <label
					for="inputNombre">N�mero de identificaci�n </label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating">
				<select class="form-select" id="floatingEstrato"
					aria-label="Floating label select example" name="phomologa">
					<option selected>�El estudiante es homologado?</option>
					<option value="1">Si</option>
					<option value="2">No</option>
				</select> <label for="floatingEstrato">Homologaci�n</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="mb-3">
				<label for="formFile" class="form-label">Seleccione la foto
					de identificaci�n </label> <input class="form-control" type="file"
					name="pfoto" id="formFile" accept="image/gif, image/png, image/jpeg">
			</div>
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-dark" >Guardar</button>
		</div>
	</form>
	<form action="">
	<input type="file" id="file" accept="image/*" onchange="mostrar()"/>
	</form>
	<img id="img"/>
</body>
</html>
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
					<option value="2">Arte Dramático</option>
					<option value="3">Artes Plásticas</option>
					<option value="4">Diseño Industrial</option>
					<option value="5">Diseño de Comunicación</option>
					<option value="6">Formación Musical</option>
					<option value="1">Arquitectura</option>
					<option value="2">Arte Dramático</option>
					<option value="3">Artes Plásticas</option>
					<option value="4">Diseño Industrial</option>
					<option value="5">Diseño de Comunicación</option>
					<option value="6">Formación Musical</option>
					<option value="7">Derecho</option>
					<option value="8">Filosofía</option>
					<option value="9">Licenciatura en Educación Infantil</option>
					<option value="10">Psicología</option>
					<option value="11">Licenciatura en Bilingüismo con Énfasis
						en la Enseñanza del Inglés</option>
					<option value="12">Intérprete Profesional de la Lengua de
						Señas Colombiana - Modalidad Virtual</option>
					<option value="13">Administración de Empresas</option>
					<option value="14">Bioingeniería</option>
					<option value="15">Ingeniería Ambiental</option>
					<option value="16">Ingeniería Electrónica</option>
					<option value="17">Ingeniería Industrial</option>
					<option value="18">Ingeniería de Sistemas</option>
					<option value="19">Negocios Internacionales</option>
					<option value="20">Matemáticas</option>
					<option value="21">Estadística</option>
					<option value="22">Contaduría Pública - Modalidad Virtual</option>
					<option value="23">Finanzas - Modalidad Virtual</option>
					<option value="24">Marketing y Transformación Digital -
						Modalidad Virtual</option>
					<option value="25">Economía - Modalidad Virtual</option>
					<option value="26">Administración de Negocios Sostenibles
						- Modalidad Virtual</option>
					<option value="27">Pregrado de Administración en
						Producción y Logística Internacional</option>
					<option value="28">Biología</option>
					<option value="29">Enfermería</option>
					<option value="30">Instrumentación Quirúrgica</option>
					<option value="31">Medicina</option>
					<option value="32">Odontología</option>
					<option value="33">Optometría</option>
					<option value="34">Química Farmacéutica</option>
				</select> <label for="floatingCarrera">Carrera</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="inputID"
					placeholder="NumeroIdentificación" name="pid"> <label
					for="inputNombre">Número de identificación </label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating">
				<select class="form-select" id="floatingEstrato"
					aria-label="Floating label select example" name="phomologa">
					<option selected>¿El estudiante es homologado?</option>
					<option value="1">Si</option>
					<option value="2">No</option>
				</select> <label for="floatingEstrato">Homologación</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="mb-3">
				<label for="formFile" class="form-label">Seleccione la foto
					de identificación </label> <input class="form-control" type="file"
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
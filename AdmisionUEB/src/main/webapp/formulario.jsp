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
					<option>Arte Dramático</option>
					<option>Artes Plásticas</option>
					<option>Diseño Industrial</option>
					<option>Diseño de Comunicación</option>
					<option>Formación Musical</option>
					<option>Arquitectura</option>
					<option>Arte Dramático</option>
					<option>Artes Plásticas</option>
					<option>Diseño Industrial</option>
					<option>Diseño de Comunicación</option>
					<option>Formación Musical</option>
					<option>Derecho</option>
					<option>Filosofía</option>
					<option>Licenciatura en Educación Infantil</option>
					<option>Psicología</option>
					<option>Licenciatura en Bilingüismo con Énfasis en la
						Enseñanza del Inglés</option>
					<option>Intérprete Profesional de la Lengua de Señas
						Colombiana - Modalidad Virtual</option>
					<option>Administración de Empresas</option>
					<option>Bioingeniería</option>
					<option>Ingeniería Ambiental</option>
					<option>Ingeniería Electrónica</option>
					<option>Ingeniería Industrial</option>
					<option>Ingeniería de Sistemas</option>
					<option>Negocios Internacionales</option>
					<option>Matemáticas</option>
					<option>Estadística</option>
					<option>Contaduría Pública - Modalidad Virtual</option>
					<option>Finanzas - Modalidad Virtual</option>
					<option>Marketing y Transformación Digital - Modalidad
						Virtual</option>
					<option>Economía - Modalidad Virtual</option>
					<option>Administración de Negocios Sostenibles - Modalidad
						Virtual</option>
					<option>Pregrado de Administración en Producción y
						Logística Internacional</option>
					<option>Biología</option>
					<option>Enfermería</option>
					<option>Instrumentación Quirúrgica</option>
					<option>Medicina</option>
					<option>Odontología</option>
					<option>Optometría</option>
					<option>Química Farmacéutica</option>
				</select> <label for="floatingCarrera">Carrera</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="inputID"
					placeholder="NumeroIdentificación" name="pid" required> <label
					for="inputNombre">Número de identificación </label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating">
				<select class="form-select" id="floatingEstrato"
					aria-label="Floating label select example" name="phomologa"required>
					<option selected>¿El estudiante es homologado?</option>
					<option>Si</option>
					<option>No</option>
				</select> <label for="floatingEstrato">Homologación</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="mb-3">
				<label for="formFile" class="form-label">Seleccione la foto
					de identificación </label> <input class="form-control" type="file"
					name="pfoto" id="formFile"
					accept="image/gif, image/png, image/jpeg" required>
			</div>
		</div>
		<div class="col-12">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="inputNombre"
					placeholder="NombreCompleto" name="pcolegioegr" required> <label
					for="inputNombre">Colegio del cual se gradúo</label>
			</div>
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-dark">Guardar</button>
		</div>
		</form>
		
</body>
</html>
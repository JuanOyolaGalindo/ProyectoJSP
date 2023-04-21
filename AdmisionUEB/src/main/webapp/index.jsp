<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
<title>Menu</title>
</head>
<body>
	<div class="p-3 mb-2 bg-black text-white">
		<p class="fs-2">
			<img
				src="https://alejandria.unbosque.edu.co/centrodiseno/careme/Logo_de_la_Universidad_El_Bosque_Blanco.png"
				class="img-thumbnail"
				style="width: 125px; background: transparent; border: 0">
			Universidad El Bosque - Menú de opciones
		</p>
	</div>

	<div class="position-absolute top-50 start-50 translate-middle">
		<div class="d-grid gap-2 col-6" style="width: 350px;">
			<button class="btn btn-dark" type="button"
				onclick="window.location.href='formulario.jsp'">Ingresar</button>
			<button class="btn btn-dark" type="button" data-bs-toggle="modal"
				data-bs-target="#modalActualizar">Actualizar</button>
			<button class="btn btn-dark" type="button" data-bs-toggle="modal"
				data-bs-target="#modalEliminar">Eliminar</button>
			<button class="btn btn-dark" type="button" data-bs-toggle="modal"
				data-bs-target="#modalBuscar">Buscar</button>
			<button class="btn btn-dark" type="button"
				action="http://localhost:8080/AdmisionUEB/AspiranteServlet"
				method="POST">Listar</button>
			<button class="btn btn-dark" type="button" data-bs-toggle="modal"
				data-bs-target="#modalListarPorCarrera">Listar por carrera</button>
		</div>
	</div>

	<div class="modal fade" id="modalActualizar" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Actualizar</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Digite
								la cedula del estudiante a actualizar:</label> <input type="text"
								class="form-control" id="recipient-name">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark">Enviar</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="modalEliminar" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Digite
								la cedula del estudiante a eliminar:</label> <input type="text"
								class="form-control" id="recipient-name">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark">Enviar</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="modalBuscar" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Buscar</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Digite
								la cedula del estudiante a buscar:</label> <input type="text"
								class="form-control" id="recipient-name">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark">Enviar</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modalListarPorCarrera" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Elija la
						carrera a listar</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<div class="form-floating">
								<select class="form-select" id="floatingCarrera"
									aria-label="Floating label select example">
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
									<option value="11">Licenciatura en Bilingüismo con
										Énfasis en la Enseñanza del Inglés</option>
									<option value="12">Intérprete Profesional de la Lengua
										de Señas Colombiana - Modalidad Virtual</option>
									<option value="13">Administración de Empresas</option>
									<option value="14">Bioingeniería</option>
									<option value="15">Ingeniería Ambiental</option>
									<option value="16">Ingeniería Electrónica</option>
									<option value="17">Ingeniería Industrial</option>
									<option value="18">Ingeniería de Sistemas</option>
									<option value="19">Negocios Internacionales</option>
									<option value="20">Matemáticas</option>
									<option value="21">Estadística</option>
									<option value="22">Contaduría Pública - Modalidad
										Virtual</option>
									<option value="23">Finanzas - Modalidad Virtual</option>
									<option value="24">Marketing y Transformación Digital
										- Modalidad Virtual</option>
									<option value="25">Economía - Modalidad Virtual</option>
									<option value="26">Administración de Negocios
										Sostenibles - Modalidad Virtual</option>
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
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark">Enviar</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
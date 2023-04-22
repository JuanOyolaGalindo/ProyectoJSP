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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha384-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
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
			Universidad El Bosque - Men� de opciones
		</p>
	</div>
	<form action="http://localhost:8080/AdmisionUEB/AspiranteServlet"
		method="GET">
		<div class="position-absolute top-50 start-50 translate-middle">
			<div class="d-grid gap-3	 col-6" style="width: 350px;">
				<input class="btn btn-dark" type="button"
					onclick="window.location.href='formulario.jsp'" value="Ingresar">
				<input class="btn btn-dark" type="button" data-bs-toggle="modal"
					data-bs-target="#modalActualizar" value="Actualizar"> <input
					class="btn btn-dark" type="button" data-bs-toggle="modal"
					data-bs-target="#modalEliminar" value="Eliminar"> <input
					class="btn btn-dark" type="button" data-bs-toggle="modal"
					data-bs-target="#modalBuscar" value="Buscar"> <input
					class="btn btn-dark" value="Listar" type="submit"> <input
					class="btn btn-dark" type="button" data-bs-toggle="modal"
					data-bs-target="#modalListarPorCarrera" value="Listar por carrera">
			</div>
		</div>
	</form>
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
								class="form-control" id="cedulaActualizar">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark" id="enviar1">Enviar</button>
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
								class="form-control" id="cedulaEliminar">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark" id="enviar2">Enviar</button>
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
								class="form-control" id="cedulaBuscar">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark" id="enviar3">Enviar</button>
					<div class = "modal-body" 	id="resultadoBusqueda "></div>
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
									<option>Arquitectura</option>
									<option >Arte Dram�tico</option>
									<option >Artes Pl�sticas</option>
									<option >Dise�o Industrial</option>
									<option >Dise�o de Comunicaci�n</option>
									<option >Formaci�n Musical</option>
									<option >Arquitectura</option>
									<option >Arte Dram�tico</option>
									<option >Artes Pl�sticas</option>
									<option>Dise�o Industrial</option>
									<option>Dise�o de Comunicaci�n</option>
									<option >Formaci�n Musical</option>
									<option>Derecho</option>
									<option >Filosof�a</option>
									<option>Licenciatura en Educaci�n Infantil</option>
									<option>Psicolog�a</option>
									<option>Licenciatura en Biling�ismo con
										�nfasis en la Ense�anza del Ingl�s</option>
									<option >Int�rprete Profesional de la Lengua
										de Se�as Colombiana - Modalidad Virtual</option>
									<option >Administraci�n de Empresas</option>
									<option >Bioingenier�a</option>
									<option>Ingenier�a Ambiental</option>
									<option>Ingenier�a Electr�nica</option>
									<option >Ingenier�a Industrial</option>
									<option>Ingenier�a de Sistemas</option>
									<option>Negocios Internacionales</option>
									<option>Matem�ticas</option>
									<option>Estad�stica</option>
									<option> Contadur�a P�blica - Modalidad
										Virtual</option>
									<option value="23">Finanzas - Modalidad Virtual</option>
									<option value="24">Marketing y Transformaci�n Digital
										- Modalidad Virtual</option>
									<option value="25">Econom�a - Modalidad Virtual</option>
									<option value="26">Administraci�n de Negocios
										Sostenibles - Modalidad Virtual</option>
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
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-dark" id="enviar4">Enviar</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
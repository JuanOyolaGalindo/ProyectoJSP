function mostrar() {
	var archivo = document.getElementById("file").files[0];
	var reader = new FileReader();
	if (file) {
		reader.readAsDataURL(archivo);
		reader.onloadend = function() {
			document.getElementById("img").src = reader.result;
		}
	}
	fetch('/AdmisionUEB/AspiranteServlet', {
		method: 'POST',
		redirect: 'follow'
	})
		.then(response => {
		
		})
		.catch(error => {
			// Manejar cualquier error aquí
		});
}



function recibir() {
	const fileInput = document.getElementById('fileInput');
	const file = fileInput.files[0];


	const formData = new FormData();
	formData.append('file', file);

	const xhr = new XMLHttpRequest();

	xhr.open('POST', 'AdmisionUEB/AspiranteServlet');
	xhr.send(formData);
}


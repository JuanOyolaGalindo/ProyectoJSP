const modalBuscar = document.getElementById('modalBuscar');
const enviar3 = document.getElementById('enviar3');

if (modalBuscar) {
  modalBuscar.addEventListener('show.bs.modal', event => {
    // Resetear el contenido del modal de respuesta
    const resultadoBusqueda = document.getElementById('resultadoBusqueda');
    resultadoBusqueda.innerHTML = '';
  });

  enviar3.addEventListener('click', () => {
    // Obtener la cédula del estudiante a buscar
    const cedula = document.getElementById('cedulaBuscar').value;
    
    // Hacer una petición al servidor para obtener la información del estudiante
    fetch('buscar', {
      method: 'POST',
      body: new URLSearchParams({
        'cedula': cedula
      })
    })
    .then(response => response.text())
    .then(data => {
      // Actualizar el contenido del modal de respuesta con la información obtenida
      const resultadoBusqueda = document.getElementById('resultadoBusqueda');
      resultadoBusqueda.innerHTML = data;
      
      // Mostrar el modal de respuesta
      const modalRespuesta = new bootstrap.Modal(document.getElementById('modalRespuesta'));
      modalRespuesta.show();
    })
    .catch(error => console.error(error));
  });
}
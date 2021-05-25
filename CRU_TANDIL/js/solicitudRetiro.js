document.querySelector('#form-solicitud').addEventListener('submit', (e) => {

  e.preventDefault();

  let data = new FormData(e.target);

  fetch('./api/solicitudRetiro', {
    method: 'POST',
    body: JSON.stringify(Object.fromEntries(data)),
  })
    .then((response) => respuesta(response))
    .then((json) => json)
    .catch((error) => console.log(error));

});

function respuesta(response) {
  console.log(response)

  if (response.ok) {
    alert("La solicitud se guardo correctamente, pronto visitaremos su hogar");
    window.location.assign("home");
  }
  else {
    alert("Ha surgido un error guardando los datos de la solicitud, por favor intente nuevamente")
  }
}
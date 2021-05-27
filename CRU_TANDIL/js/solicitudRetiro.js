document.querySelector('#form-solicitud').addEventListener('submit', (e) => {
  e.preventDefault();

  let direccion = e.target.querySelector("#direccion").value;

  if (direccion == "brown 360" || direccion == "italia 939") {
    return alert("Su ubicación en mayor a 6km y no podemos acercarnos a retirar los materiales, por favor diríjase al centro de acopio.")
  }



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
document.querySelector('#form-pesaje').addEventListener('submit', (e) => {

    e.preventDefault();

    let data = new FormData(e.target);

    fetch('./api/pesaje', {
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
        alert("Los datos del pesaje han sido cargados con exito");
        window.location.assign("weighingForm");
    }
    else {
        alert("Ha surgido un error guardando los datos del pesaje, por favor intente nuevamente");
    }
}
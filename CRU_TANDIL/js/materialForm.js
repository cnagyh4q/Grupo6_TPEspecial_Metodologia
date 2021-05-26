document.querySelector('#form-material').addEventListener('submit', (e) => {

    e.preventDefault();

    let data = new FormData(e.target);

    fetch('./api/material', {
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
        alert("El material se guardo correctamente");
        window.location.assign("homeAdmin");
    }
    else {
        alert("Ha surgido un error guardando los datos del nuevo material, por favor intente nuevamente")
    }
}
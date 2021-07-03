document.querySelector('#form-cartonero').addEventListener('submit', (e) => {

    e.preventDefault();

    let data = new FormData(e.target);

    fetch('./api/cartonero', {
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
        alert("El cartonero se guardo correctamente");
        window.location.assign("homeAdmin");
    }
    else {
        alert("Ha surgido un error cargando los datos del nuevo cartonero, por favor intente nuevamente")
    }
}
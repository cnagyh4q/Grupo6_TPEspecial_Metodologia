document.querySelector('#form-pesaje').addEventListener('submit', (e) => {

    e.preventDefault();

    let data = new FormData(e.target);

    fetch('./api/pesajeMaterial', {
        method: 'POST',
        body: JSON.stringify(Object.fromEntries(data)),
    }).then(function (respuesta) {
        let status = respuesta.ok //retorna true si la respuesta fue exitosa
        respuesta.json().then(function (mijson) {
            if (status) {
                alert(mijson);
                window.location.assign("home");
            }
            else {
                alert(mijson);
            }
        });
    }).catch((error) => console.log(error));
});

function ocultarId(rol) {
    let id = document.querySelector("#idUsuario");
    if (rol.value == 2) {
        id.style.display = "none";
    }
    else {
        id.style.display = "flex";
    }
}

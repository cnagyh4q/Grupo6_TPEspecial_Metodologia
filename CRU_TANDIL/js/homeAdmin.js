
function eliminarMaterial(id) {

    let url = './api/material/' + id;

    fetch(url, {
        method: 'DELETE',
    })
        .then((response) => respuesta(response))
        .then((json) => json)
        .catch((error) => console.log(error));

}

function respuesta(response) {
    console.log(response)

    if (response.ok) {
        alert("El material se elimino correctamente");
        window.location.assign("homeAdmin");
    }
    else {
        alert("Ha surgido un error al eliminar el material, por favor intente nuevamente");
    }
}

let botones = document.getElementsByClassName("btonModal")

for (let btnModal of botones) {
    btnModal.addEventListener('click', funcionPrueba);
}

function funcionPrueba(e) {
    let button = e.target.dataset;

    let nmaterialModal = document.querySelector("#nmaterialModal");
    let tipoModal = document.querySelector("#materialModal");
    let tratamientoModal = document.querySelector("#tratamientoModal");

    nmaterialModal.value = button.nmaterial;
    tipoModal.value = button.tipo_material;
    tratamientoModal.value = button.tratamiento;

}

document.querySelector("#form-material").addEventListener('submit', (e) => {

    let nmaterial = e.target.querySelector("#nmaterialModal").value;
    e.preventDefault();

    let data = new FormData(e.target);

    console.log(JSON.stringify(Object.fromEntries(data)), nmaterial);

    fetch('./api/material/' + nmaterial, {
        method: 'PUT',
        body: JSON.stringify(Object.fromEntries(data)),
    })
        .then((response) => respuestaEdit(response))
        .then((json) => json)
        .catch((error) => console.log(error));

});

function respuestaEdit(response) {
    console.log(response)

    if (response.ok) {
        alert("Se actualizo el material correctamente");
        window.location.assign("homeAdmin");
    }
    else {
        alert("Ha surgido un error al actualizar el material, por favor intente nuevamente");
    }
}






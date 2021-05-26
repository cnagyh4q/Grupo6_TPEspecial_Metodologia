
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

/* document.getElementById("btn_editar").addEventListener('click', functSubmit);

function functSubmit(event) {
    let nmaterialModal = document.querySelector("#nmaterialModal").value;
    let tipoModal = document.querySelector("#materialModal").value;
    let tratamientoModal = document.querySelector("#tratamientoModal").value;
    //console.log(form);
    var msg = document.getElementById("tratamientoModal").value;
    alert("Cmabiando " + nmaterialModal + ", " + tipoModal + ", " + tratamientoModal);
} */

document.querySelector("#form-material").addEventListener('submit', (e) => {
    console.log("editar modal");

    e.preventDefault();

    //let data = new FormData(e.target);

    fetch('./api/material', {
        method: 'POST',
        body: JSON.stringify(Object.fromEntries(data)),
    })
        .then((response) => respuesta(response))
        .then((json) => json)
        .catch((error) => console.log(error));

});






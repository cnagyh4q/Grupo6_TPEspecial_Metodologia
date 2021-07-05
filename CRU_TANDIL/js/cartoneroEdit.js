let botones = document.getElementsByClassName("btonModal")

for (let btnModal of botones) {
    btnModal.addEventListener('click', funcionPrueba);
}
function funcionPrueba(e) {
    let button = e.target.dataset;   


    let ncartoneroModal = document.querySelector("#ncartoneroModal"); 
    let nombreModal = document.querySelector("#nombreModal");
    let vehiculoModal = document.querySelector("#vehiculoModal");
    let dniModal = document.querySelector("#dniModal");

    let direccionModal = document.querySelector("#direccionModal");
    let nacimientoModal = document.querySelector("#nacimientoModal");
    let telefonoModal = document.querySelector("#telefonoModal");

    ncartoneroModal.value = button.ncartonero;

    nombreModal.value = button.nombre;
    vehiculoModal.value = button.vehiculo;
    dniModal.value = button.dni;

    direccionModal.value = button.direccion;
    nacimientoModal.value = button.nacimiento;
    telefonoModal.value = button.telefono;

}



document.querySelector("#form-edit-cartonero").addEventListener('submit', (e) => {

    let ncartonero = e.target.querySelector("#ncartoneroModal").value;
    e.preventDefault();

    let data = new FormData(e.target);

  
    fetch('./api/cartonero/' + ncartonero, {
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
        alert("Se actualizo el cartonero correctamente");
        window.location.assign("cartoneros");
    }
    else {
        alert("Ha surgido un error al actualizar el cartonero, por favor intente nuevamente");
    }
}
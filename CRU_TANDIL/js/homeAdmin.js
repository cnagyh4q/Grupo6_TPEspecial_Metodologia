function eliminarMaterial(id){
    
    let url = './api/material/'+ id;

    fetch(url , {
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

document.querySelector('#form-solicitud').addEventListener('submit', (e) =>{

    e.preventDefault();



    let data = new FormData(e.target);

    fetch('./api/solicitudRetiro', {
        method: 'POST',
        body: JSON.stringify(Object.fromEntries(data)),
      })
    .then((response) => response.json())
    .then((json) => json)
    .catch((error) => console.log(error));

})
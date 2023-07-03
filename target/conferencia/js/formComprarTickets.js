function calcularTotal(cantidad, categoria, precioEntrada) {

    const precioEstudiante = 0.2 * parseInt(precioEntrada);
    const precioTrainee = 0.5 * parseInt(precioEntrada);
    const precioJunior = 0.85 * parseInt(precioEntrada);

    let total = 0;

    if (!(isNaN(cantidad)))
    {
        switch (categoria) {
            case "1":
                total = parseInt(cantidad) * precioEstudiante;
                break;
            case "2":
                total = parseInt(cantidad) * precioTrainee;
                break;
            case "3":
                total = parseInt(cantidad) * precioJunior;
                break;
        }
    }
    return (total)
}

function mostrarTotalAPagar() {
    const precioEntrada = 200;
    const cantidad = document.getElementById("cantidad").value;
    const categoria = document.getElementById("categoria").value;

    totalAPagar = calcularTotal(cantidad, categoria, precioEntrada);
    document.getElementById("totalAPagar").innerHTML = "Total a Pagar: $" + totalAPagar;
}



function borrarForm() {
    document.getElementById("totalAPagar").innerHTML = "Total a Pagar: $";
}

const botonResumen = document.getElementById("btnResumen");
const botonBorrar = document.getElementById("btnBorrar");

botonResumen.onclick = mostrarTotalAPagar;
botonBorrar.onclick = borrarForm;

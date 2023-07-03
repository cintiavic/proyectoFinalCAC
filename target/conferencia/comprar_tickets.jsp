<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/styles.css">
    <link rel="icon" type="image/ico" href="./img/favicon.ico">
    <title>Conf Bs As - Comprar Tickets</title>
</head>

<body>

    <!-- Barra de Navegación-->
    <%@include file="navbar.jsp" %>
    <form class="container">
        <div class="row justify-content-center  mx-0 mt-4">
            <div class="col-md-2 text-center pt-2 border border-primary">
                <p class="texto-xlarge-negrita"> Estudiante </p>
                <p> Tienen un descuento </p>
                <p class="fw-bold"> 80% </p>
                <p class="texto-medium"> *presentar documentación </p>
            </div>
            <div class="col-md-2 mx-2 pt-2 text-center border border-info">
                <p class="texto-xlarge-negrita"> Trainee </p>
                <p> Tienen un descuento </p>
                <p class="fw-bold"> 50% </p>
                <p class="texto-medium"> *presentar documentación </p>
            </div>
            <div class="col-md-2 pt-2 text-center border border-warning">
                <p class="texto-xlarge-negrita"> Junior </p>
                <p> Tienen un descuento </p>
                <p class="fw-bold"> 15% </p>
                <p class="texto-medium"> *presentar documentación </p>
            </div>
        </div>
        <div class="row justify-content-center mx-0">
            <div class="col-md-6">
                <p class="texto-small text-center mb-0 mt-3">VENTA</p>
                <p class="h3 text-center mb-1">VALOR DE TICKET: $200</p>
            </div>
        </div>
        <div class="row justify-content-center mt-3 mx-0 px-2 ">
            <div class="col-md-3 px-0 mx-1 my-1">
                <input type="text" class="form-control texto-medium" placeholder="Nombre">
            </div>
            <div class="col-md-3 px-0 mx-1 my-1">
                <input type="text" class="form-control texto-medium" placeholder="Apellido">
            </div>
        </div>
        <div class="row justify-content-center my-1 mx-0">
            <div class="col-md-6 px-0 mx-1 ">
                <input type="email" class="form-control texto-medium" placeholder="Correo">
            </div>
        </div>
        <div class="row justify-content-center mt-3 mx-0 px-2 ">
            <div class="col-md-3 px-0  mx-1 ">
                <label for="cantidad" class="mb-1">Cantidad</label>
                <input type="text" class="form-control texto-medium" id="cantidad" placeholder="Cantidad">
            </div>
            <div class="col-md-3 px-0  mx-1">
                <label for="categoria" class="mb-1">Categoría</label>
                <select class="form-select texto-medium" id="categoria">
                    <option selected value="0">Categoria</option>
                    <option value="1">Estudiante</option>
                    <option value="2">Trainee</option>
                    <option value="3">Junior</option>
                </select>
            </div>
        </div>
      <div class="row justify-content-center mt-3 mx-0">
            <div class="col-md-6 p-0">
                <p class="totalAPagar" id="totalAPagar">Total a Pagar: $</p>
            </div>
        </div> 
        
        <div class="row justify-content-center mt-4 mx-0 px-2">
            <div class="col-md-3 px-0 mx-1 my-1">
                <button type="reset" class="btn w-100 botonEnviar" id="btnBorrar">Borrar</button>
            </div>
            <div class="col-md-3 px-0 my-1 mx-1">
                <button type="button" class="btn botonEnviar w-100"id="btnResumen">Resumen</button>
            </div>
        </div>
    </form>

    <!--Footer-->
    <%@include file="footer.jsp" %>

    <!-- Código de bootstrap para cosas js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous">
    </script>
    <script src="./js/formComprarTickets.js"> </script>

</body>

</html>
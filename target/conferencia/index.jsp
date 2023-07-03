<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="head.jsp" %>
    <title>Conf Bs As</title>
</head>

<body>
  
    <!-- Barra de Navegación-->
    <%@include file="navbar.jsp"%>
    <!-- La Conferencia-->
    <div class="card text-bg-dark border-0 rounded-0" id="la-conferencia">
        <img src="./img/ba1.jpg" class="card-img opacity-50" alt="bs as">
        <div class="card-img-overlay d-flex flex-column justify-content-center mx-md-5">
            <h3 class="card-title align-self-end" id="tituloconferencia">Conf Bs As</h3>
            <p class="card-text text-end align-self-end col-md-6" id="textoconferencia">Bs As llega por primera vez a
                Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos
                que están creando el futuro de Internet. Ven a
                conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que
                tenemos para ti. Te esperamos!</p>
            <div class="d-flex align-self-end ">
                <button type="button"
                    class="btn btn-sm btn-outline-light align-self-end text-nowrap me-2 botonConferencia">Quiero
                    ser orador</button>
                <button type="button" class="btn btn-success btn-sm align-self-end text-nowrap botonConferencia" id="btnComprarTickets">Comprar
                    Tickets</button>
            </div>
        </div>
    </div>


    <!--Los oradores -->
    <div class="container" id="los-oradores">
        <p class="texto-small text-center mt-2 mb-1 p-0">CONOCE A LOS</p>
        <p class="h3 text-center m-0-0-2-0 p-0">ORADORES</p>
    </div>
    <div
        class="container-fluid d-flex flex-column justify-content-center flex-md-row col-12 col-md-9 px-0">
        <div class="card me-md-4">
            <img src="./img/steve.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <span class="badge text-bg-warning texto-badge fondo-badge">JavaScript</span>
                <span class="badge text-bg-primary texto-badge fondo-badge">React</span>
                <h5 class="card-title mt-0">Steve Jobs</h5>
                <p class="card-text texto-small">Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit esse
                    laborum quia sunt sit, quo, libero natus tenetur nesciunt eos consequuntur, suscipit quibusdam
                    labore saepe tempore vero? Deleniti, cupiditate error?</p>
            </div>
        </div>
        <div class="card me-md-4 ">
            <img src=" ./img/bill.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <span class="badge text-bg-warning texto-badge fondo-badge">JavaScript</span>
                <span class="badge text-bg-primary texto-badge fondo-badge">React</span>
                <h5 class="card-title mt-0">Bill Gates</h5>
                <p class="card-text texto-small">Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit esse
                    laborum quia sunt sit, quo, libero natus tenetur nesciunt eos consequuntur, suscipit quibusdam
                    labore saepe tempore vero? Deleniti, cupiditate error?</p>
            </div>
        </div>
        <div class="card">
            <img src="./img/ada.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
                <span class="badge text-bg-secondary texto-badge fondo-badge">Negocios</span>
                <span class="badge text-bg-danger texto-badge fondo-badge">Startups</span>
                <h5 class="card-title mt-0">Ada Lovelace</h5>
                <p class="card-text texto-small">Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit esse
                    laborum quia sunt sit, quo, libero natus tenetur nesciunt eos consequuntur, suscipit quibusdam
                    labore saepe tempore vero? Deleniti, cupiditate error?</p>
            </div>
        </div>
    </div>

    <!-- El lugar y la fecha -->
    <div class="card text-bg-dark mb-3 mt-3 border-white rounded-0" id="el-lugar-y-la-fecha">
        <div class="row g-0">
            <div class="col-md-6">
                <img src="./img/honolulu.jpg" class="img-fluid rounded-0" alt="...">
            </div>
            <div class="col-md-6 fondo-casi-negro">
                <div class="card-body">
                    <h5 class="card-title">Bs As - Octubre</h5>
                    <p class="card-text texto-medium">Buenos Aires es la provincia y localidad más grande del estado de
                        Argentina, en los Estados Unidos. Honolulu es la más sureña de entre las principales ciudades
                        estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de
                        la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada
                        que cubre toda la ciudad (aproximadamente 600km2 de superficie).</p>
                    <button type="button" class="btn btn-sm btn-outline-light align-self-end text-nowrap">Conocé
                        más</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Conviértete en orador titulo-->
    <div class="container" id="conviertete-en-orador">
        <p class="texto-small text-center mt-3 mb-0 p-0">CONVIÉRTETE EN UN</p>
        <p class="h3 text-center mb-1">ORADOR</p>
        <p class="texto-medium text-center">Anótate como orador para dar una <abbr
                title="Consiste en una presentación de la idea central de un proyecto o visión en cinco minutos">charla
                ignite</abbr>. Cuéntanos de qué quieres hablar!</p>
    </div>
    <div class="container mt-0">
        <form>
            <div class="row justify-content-center mb-3">
                <div class="col-md-3 mt-3">
                    <input type="text" class="form-control texto-medium py-0" id="floatingNombre" placeholder="Nombre">
                </div>
                <div class="col-md-3 mt-3">
                    <input type="text" class="form-control texto-medium py-0" id="floatingApellido"
                        placeholder="Apellido">
                </div>
            </div>
            <div class="row justify-content-center mb-3">
                <div class="col-md-6">
                    <textarea class="form-control area-texto" id="temaCharla" name="text"
                        placeholder="Sobre qué quieres hablar?"></textarea>
                    <div id="recuerdaTitulo" class="form-text texto-small">Recuerda incluir un título para tu charla
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <button type="button" class="btn col-6 botonEnviar" aria-pressed="false">Enviar</button>
            </div>
        </form>
    </div>

    <!--Footer-->
    <%@include file="footer.jsp" %>

    <!-- Código de bootstrap para cosas js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
        <script src="/js/formComprarTickets.js"></script>

</body>

</html>

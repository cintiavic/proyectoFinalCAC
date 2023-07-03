<%@ page contentType="text/html; charset=UTF-8" %>

<nav class="navbar navbar-expand-lg  fondo-casi-negro navbar-dark py-3 barra">
    <div class="container-fluid mx-5 align-items-center px-2 brand">
        <a class="navbar-brand px-0" href="https://buenosaires.gob.ar/educacion/codo-codo-40"
            target="_blank">
            <img src="./img/codoacodo.png" alt="codoacodo" width="80" id="imagenbrand">
            <span id="textobrand">Conf Bs As</span>
        </a>
        <div class="justify-content-end">
            <button class="navbar-toggler hambur" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav navbar-right mx-auto mb-2 mb-lg-0">
                    <li class="nav-item text-end">
                        <a class="nav-link active linksheader" aria-current="page" href="index.jsp#la-conferencia">La
                            conferencia</a>
                    </li>
                    <li class="nav-item text-end">
                        <a class="nav-link active linksheader " aria-current="page" href="index.jsp#los-oradores">Los
                            oradores</a>
                    </li>
                    <li class="nav-item text-end linksheader">
                        <a class="nav-link active" aria-current="page" href="index.jsp#el-lugar-y-la-fecha">El lugar y la
                            fecha</a>
                    </li>
                    <li class="nav-item text-end linksheader">
                        <a class="nav-link active" aria-current="page" href="index.jsp#conviertete-en-orador">Conviértete en
                            orador</a>
                    </li>
                    <li class="nav-item text-end">
                        <a class="nav-link active text-success linksheader" aria-current="page"
                            href="./comprar_tickets.jsp" target="_blank">Comprar
                            tickets</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Panel Administrador
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <li><a class="dropdown-item" href="<%=request.getContextPath()%>/OradoresController">Oradores</a></li>
                          <li><a class="dropdown-item" href="<%=request.getContextPath()%>/OradoresController">Tickets</a></li>
                        </ul>
                      </li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Orador"%>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="head.jsp" %>
                <title>Conf Bs As - Panel Admin</title>
    </head>

    <body>
        <!-- Barra de Navegación-->
        <%@include file="navbar.jsp"%>
            <div class="container mb-20">
                <br><br>
                <p class="h3 text-center m-3-0-2-0 p-0">ADMINISTRAR ORADORES</p>
               
                 <table class="table">
                        <thead>
                            <tr class="text-center text-medium">
                                <th scope="col">Id</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Tema Charla</th>
                                <th scope="col">Fecha inscripción</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%ArrayList<Orador> listaOradores = (ArrayList<Orador>)request.getAttribute("listaOradores");%>
                            <%
                                for(Orador unOrador : listaOradores) {
                            %>
                             <tr class="texto-medium">
                               <th scope="row"> <%=unOrador.getId()%> </th>
                               <td> <%=unOrador.getNombre()%></td>
                               <td> <%=unOrador.getApellido()%></td>
                               <td> <%=unOrador.getTema_charla()%></td>
                               <td> <%=unOrador.getFechaInscripcion()%></td>
                               <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <button type="button" class="btn btn-primary btn-sm">Editar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Borrar</button>
                                </div>
                                </td>
                               
                             </tr>
                            <%
                                }
                            %>                  
                        </tbody>
                    </table>
                    <br><br>
               
            </div>


            <!--Footer-->
            <%@include file="footer.jsp" %>
             <!-- Código de bootstrap para cosas js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous">
</script>
    </body>

    </html>
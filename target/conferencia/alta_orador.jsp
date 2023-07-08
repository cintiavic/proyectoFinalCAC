

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
             <!--    <script>
                    function confirmDelete() {
                        return confirm("¿Está seguro que desea eliminar el orador?");
                    }
                </script> -->
                <script>
                    function Cancelar() {
                      // Redirigir a la página deseada
                      window.location.href = "<%=request.getContextPath()%>/admin_oradores.jsp";
                    }
                  </script>
            
    
    </head>

    <body>
        <!-- Barra de Navegación-->
        <%@include file="navbar.jsp"%>
            <div class="container mb-20">
                <br><br>
                <p class="h3 text-center m-3-0-2-0 p-0">NUEVO ORADOR</p>
                
                <div class="container mt-0">
                    <form method="post"
                    action="<%=request.getContextPath()%>/AltaOradorController">
                    
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-3 mt-3">
                                <input name="nombreOrador" type="text" class="form-control texto-medium py-0" id="floatingNombre" placeholder="Nombre" required>
                            </div>
                            <div class="col-md-3 mt-3">
                                <input  name="apellidoOrador" type="text" class="form-control texto-medium py-0" id="floatingApellido"
                                    placeholder="Apellido" required>
                            </div>
                        </div>
                        <div class="row justify-content-center mb-3">
                            <div class="col-md-6">
                                <textarea name="temaCharlaOrador" class="form-control area-texto texto-medium" id="temaCharla" name="text"
                                    placeholder="Tema de la charla" required></textarea>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center">
                            <button type="submit" class= "botonEnviar border-0 col-md-3 px-0 my-1 mx-1" aria-pressed="false">Guardar</button>
                            <button type="button" class= "botonEnviar border-0 col-md-3 px-0 my-1 mx-1" aria-pressed="false" onClick="history.go(-1);">Cancelar</button>
                            

                        </div>
                    </form>
                </div>
               
                
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
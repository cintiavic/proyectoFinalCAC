package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.FileWriter;

import dao.OradoresDAO;
import pojo.Orador;

@WebServlet("/EditController")
public class EditController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        OradoresDAO oDao = new OradoresDAO();
        Orador oFromDB = null;

        try (FileWriter archivoLog = new FileWriter(
                "C:\\CAC\\Proyectos\\conferencia.entrega2\\src\\main\\resources\\LogDeEditController.txt")) {

            archivoLog.write("Entrando al doGet");
            oFromDB = oDao.obtenerOrador(Integer.parseInt(id));
            req.setAttribute("oradorFromDB", oFromDB);
            archivoLog.write("despachando a edit_orador con" + oFromDB);
            getServletContext().getRequestDispatcher("/edit_orador.jsp").forward(req, resp);

        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       FileWriter archivoLog = new FileWriter("C:\\CAC\\Proyectos\\conferencia.entrega2\\src\\main\\resources\\LogDeEditController.txt");
       archivoLog.write("Entrando al doPost");
        
        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String temaCharla = req.getParameter("temaCharla");
        String fechaInscripcion = req.getParameter("fechaInscripcion");

        OradoresDAO oDao = new OradoresDAO();

        try {
            archivoLog.write("voy a entrar a actualizar orador con estos datos: " + id + "-" + nombre + "-" + apellido
                    + "-" + temaCharla);
                    //oDao.crearOrador(nombre, apellido, temaCharla);
            oDao.actualizarOrador(Integer.parseInt(id), nombre, apellido, temaCharla, fechaInscripcion);
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        resp.sendRedirect(req.getContextPath() + "/OradoresController");

    }
}

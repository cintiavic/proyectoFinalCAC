package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.OradoresDAO;

@WebServlet("/AltaOradorController")
public class AltaOradorController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nombre = req.getParameter("nombreOrador");
		String apellido = req.getParameter("apellidoOrador");
		String tema_charla = req.getParameter("temaCharlaOrador");
				
		//crear PersonajeDAO
        OradoresDAO dao = new OradoresDAO();
		
		//ejecutar el metodo crearPersonaje(parametros...)
		try {
            dao.crearOrador(nombre, apellido, tema_charla);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		
		//ctrl+shit+o
		//ir a la siguiente pagina
		resp.sendRedirect(req.getContextPath()+"/OradoresController");
	}
}

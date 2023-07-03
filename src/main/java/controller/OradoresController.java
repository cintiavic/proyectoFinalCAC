package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.OradoresDAO;
import pojo.Orador;

@WebServlet("/OradoresController")

public class OradoresController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        OradoresDAO o = new OradoresDAO();
        ArrayList<Orador> listaOradores =  new ArrayList<>();
        try {
            listaOradores = o.getListaOradores();
        } catch (SQLException e) {
            
            e.printStackTrace();
        }

        req.setAttribute("listaOradores", listaOradores);
        req.getRequestDispatcher("/admin_oradores.jsp").forward(req, resp);
    }
    
    
}

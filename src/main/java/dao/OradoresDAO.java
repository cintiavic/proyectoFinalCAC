package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conexion.Conexion;
import pojo.Orador;

public class OradoresDAO {
    private ArrayList<Orador> listaOradores = new ArrayList<Orador>();

    public ArrayList<Orador> getListaOradores() throws SQLException {
        Connection con = Conexion.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from orador");
        ResultSet rs = ps.executeQuery();
      
        while (rs.next())
        {
            int id = rs.getInt(1);
            String nombre = rs.getString(2);
            String apellido = rs.getString(3);
            String tema_charla = rs.getString(4);
            String fechaInscripcion = rs.getString(5);

            Orador o = new Orador();

            o.setId(id);
            o.setNombre(nombre);
            o.setApellido(apellido);
            o.setTema_charla(tema_charla);
            o.setFechaInscripcion(fechaInscripcion);
            
            listaOradores.add(o);
        }
        con.close();
        return (listaOradores);
    }

}

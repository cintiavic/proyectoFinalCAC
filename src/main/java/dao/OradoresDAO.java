package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conexion.Conexion;
import pojo.Orador;

public class OradoresDAO {
    private ArrayList<Orador> listaOradores = new ArrayList<Orador>();

    
    public OradoresDAO(ArrayList<Orador> listaOradores) {
        this.listaOradores = listaOradores;
    }

    

    public OradoresDAO() {
    }


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
        return listaOradores;
    }

    public void crearOrador(String nombre, String apellido, String tema_charla) throws SQLException {
		Connection con = Conexion.getConnection();
		
		if(con != null) { 
			
			String sql = "INSERT INTO orador (nombre, apellido, tema_charla) ";
            sql += "VALUES('" + nombre + "','" + apellido + "','" + tema_charla +"');";
			
			//control de errores
			try {
				Statement st = con.createStatement();			
				st.executeUpdate(sql);
				
				//cierre de conexion
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	
	}

    public void borrarOrador (int id) throws SQLException{

        Connection con = Conexion.getConnection();
            
            if(con != null) { 
                
                String sql = "DELETE FROM orador ";
                 sql += "WHERE id = " + id;
                 
                
                //control de errores
                try {
                    Statement st = con.createStatement();			
                    st.executeUpdate(sql);
                    
                    //cierre de conexion
                    con.close();
                    
                }catch (Exception e) {
                    e.printStackTrace();
                }
            }
        
	}
}

package pojo;

import java.io.Serializable;

public class Orador implements Serializable {
    int id;
    String nombre;
    String apellido;
    String tema_charla;
    String fechaInscripcion;

    public int getId() {
        return id;
    }

    
    public String getNombre() {
        return nombre;
    }
    public String getApellido() {
        return apellido;
    }
    public String getTema_charla() {
        return tema_charla;
    }
    public String getFechaInscripcion() {
        return fechaInscripcion;
    }

  
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public void setTema_charla(String tema_charla) {
        this.tema_charla = tema_charla;
    }
    public void setFechaInscripcion(String fechaInscripcion) {
        this.fechaInscripcion = fechaInscripcion;
    }
    @Override
    public String toString() {
        return "Orador [nombre=" + nombre + ", apellido=" + apellido + ", tema_charla=" + tema_charla + ", fechaInscripcion=" + fechaInscripcion
                + "]";
    }



    public void setId(int id) {
        this.id = id;
    }
    



}

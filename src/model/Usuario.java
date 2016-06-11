package model;

public class Usuario {

    private int id;
    private String descripcion;
    private String clave;
    private String permiso;

    public Usuario() {
    }

    public Usuario(int id, String descripcion, String clave, String permiso) {
        this.id = id;
        this.descripcion = descripcion;
        this.clave = clave;
        this.permiso = permiso;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getPermiso() {
        return permiso;
    }

    public void setPermiso(String permiso) {
        this.permiso = permiso;
    }

}

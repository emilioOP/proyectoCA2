package model;

public class Posicion {

    private int id;
    private String posicion;

    public Posicion() {
    }

    public Posicion(int id, String posicion) {
        this.id = id;
        this.posicion = posicion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPosicion() {
        return posicion;
    }

    public void setPosicion(String estado) {
        this.posicion = estado;
    }

    @Override
    public String toString() {
        return this.posicion;
    }
    
    

}
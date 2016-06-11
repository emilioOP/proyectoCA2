/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Emilio
 */
public class Arbitro {
    private int id;
    private String nombre;
    private String apellido;
    private int edad;
    private String posision;
    private int pais;    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public Arbitro() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getPosision() {
        return posision;
    }

    public void setPosision(String posision) {
        this.posision = posision;
    }

    public int getPais() {
        return pais;
    }

    public void setPais(int pais) {
        this.pais = pais;
    }

    @Override
    public String toString() {
        return this.nombre+" "+this.apellido;
    }
    
    
    
    
}

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
public class DT {
    private int id;
    private String nombre;
    private String apellido;
    private int edad;
    private int nacionalidad;
    private int seleccion;
    private int aniosDT;
    private int sueldoFifa;

    public DT() {
    }

    public DT(int id, String nombre, String apellido, int edad, int nacionalidad, int clubDeportivo, int aniosDT, int sueldoFifa) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.nacionalidad = nacionalidad;
        this.seleccion = clubDeportivo;
        this.aniosDT = aniosDT;
        this.sueldoFifa = sueldoFifa;
    }

    public int getSeleccion() {
        return seleccion;
    }

    public void setSeleccion(int seleccion) {
        this.seleccion = seleccion;
    }
        
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(int nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public int getAniosDT() {
        return aniosDT;
    }

    public void setAniosDT(int aniosDT) {
        this.aniosDT = aniosDT;
    }

    public int getSueldoFifa() {
        return sueldoFifa;
    }

    public void setSueldoFifa(int sueldoFifa) {
        this.sueldoFifa = sueldoFifa;
    }
    
    
}

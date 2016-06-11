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
public class Nacionalidad {
    private int id;
    private String pais;

    public Nacionalidad(int id, String pais) {
        this.id = id;
        this.pais = pais;
    }

    public Nacionalidad() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    @Override
    public String toString() {
        return this.pais;
    }
    
    
   
}

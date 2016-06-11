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
public class Fase {
    private int id;
    private String fase;    

    @Override
    public String toString() {
        return this.fase;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFase() {
        return fase;
    }

    public void setFase(String fase) {
        this.fase = fase;
    }

    public Fase(int id, String fase) {
        this.id = id;
        this.fase = fase;
    }

    public Fase() {
    }
}

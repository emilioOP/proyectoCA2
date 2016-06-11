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
public class Partido {
    private int id;
    private int idSeleccion1;
    private int idSeleccion2;
    private int arbitro;
    private int arbitroL1;
    private int arbitroL2;
    private int cuartoArbitro;
    private int idEstadio;
    private int publico;
    private String dia;
    private String mes;
    private String horaInicio;
    private String minInicio;    
    private String horaTermino;
    private String minTermino;
    private int fase;

    public Partido() {}

    public Partido(int id, int idSeleccion1, int idSeleccion2, int arbitro, int arbitroL1, int arbitroL2, int cuartoArbitro, int idEstadio, int publico, String dia, String mes, String horaInicio, String inInicio, String horaTermino, String minTermino, int fase) {
        this.id = id;
        this.idSeleccion1 = idSeleccion1;
        this.idSeleccion2 = idSeleccion2;
        this.arbitro = arbitro;
        this.arbitroL1 = arbitroL1;
        this.arbitroL2 = arbitroL2;
        this.cuartoArbitro = cuartoArbitro;
        this.idEstadio = idEstadio;
        this.publico = publico;
        this.dia = dia;
        this.mes = mes;
        this.horaInicio = horaInicio;
        this.minInicio = inInicio;
        this.horaTermino = horaTermino;
        this.minTermino = minTermino;
        this.fase = fase;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdSeleccion1() {
        return idSeleccion1;
    }

    public void setIdSeleccion1(int idSeleccion1) {
        this.idSeleccion1 = idSeleccion1;
    }

    public int getIdSeleccion2() {
        return idSeleccion2;
    }

    public void setIdSeleccion2(int idSeleccion2) {
        this.idSeleccion2 = idSeleccion2;
    }

    public int getArbitro() {
        return arbitro;
    }

    public void setArbitro(int arbitro) {
        this.arbitro = arbitro;
    }

    public int getArbitroL1() {
        return arbitroL1;
    }

    public void setArbitroL1(int arbitroL1) {
        this.arbitroL1 = arbitroL1;
    }

    public int getArbitroL2() {
        return arbitroL2;
    }

    public void setArbitroL2(int arbitroL2) {
        this.arbitroL2 = arbitroL2;
    }

    public int getCuartoArbitro() {
        return cuartoArbitro;
    }

    public void setCuartoArbitro(int cuartoArbitro) {
        this.cuartoArbitro = cuartoArbitro;
    }

    public int getIdEstadio() {
        return idEstadio;
    }

    public void setIdEstadio(int idEstadio) {
        this.idEstadio = idEstadio;
    }

    public int getPublico() {
        return publico;
    }

    public void setPublico(int publico) {
        this.publico = publico;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getMinInicio() {
        return minInicio;
    }

    public void setMinInicio(String minInicio) {
        this.minInicio = minInicio;
    }

    public String getHoraTermino() {
        return horaTermino;
    }

    public void setHoraTermino(String horaTermino) {
        this.horaTermino = horaTermino;
    }

    public String getMinTermino() {
        return minTermino;
    }

    public void setMinTermino(String minTermino) {
        this.minTermino = minTermino;
    }

    public int getFase() {
        return fase;
    }

    public void setFase(int fase) {
        this.fase = fase;
    }

        
}

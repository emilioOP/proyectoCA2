/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import bd.Data;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Emilio
 */
public class Seleccion {
    private int id;
    private int jugadores;
    private int cuerpoTecnico;
    private boolean estado;
    private int pais;
    private String paisStr;
    private int rankingFIFA;
    private int fase;
    private int grupo;

    public String getPaisStr() {
        return paisStr;
    }

    public void setPaisStr(String paisStr) {
        this.paisStr = paisStr;
    }

    public Seleccion() {
    }

    public Seleccion(int id, int jugadores, int cuerpoTecnico, boolean estado, int pais, int rankingFIFA, int fase, int grupo) {
        this.id = id;
        this.jugadores = jugadores;
        this.cuerpoTecnico = cuerpoTecnico;
        this.estado = estado;
        this.pais = pais;
        this.rankingFIFA = rankingFIFA;
        this.fase = fase;
        this.grupo = grupo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getJugadores() {
        return jugadores;
    }

    public void setJugadores(int jugadores) {
        this.jugadores = jugadores;
    }

    public int getCuerpoTecnico() {
        return cuerpoTecnico;
    }

    public void setCuerpoTecnico(int cuerpoTecnico) {
        this.cuerpoTecnico = cuerpoTecnico;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public int getPais() {
        return pais;
    }

    public void setPais(int pais) {
        this.pais = pais;
    }

    public int getRankingFIFA() {
        return rankingFIFA;
    }

    public void setRankingFIFA(int rankingFIFA) {
        this.rankingFIFA = rankingFIFA;
    }

    public int getFase() {
        return fase;
    }

    public void setFase(int fase) {
        this.fase = fase;
    }

    public int getGrupo() {
        return grupo;
    }

    public void setGrupo(int grupo) {
        this.grupo = grupo;
    }

    @Override
    public String toString() {
        return this.paisStr;
    }


    
    
}

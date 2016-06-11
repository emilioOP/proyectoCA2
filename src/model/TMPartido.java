/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import bd.Data;
import java.sql.SQLException;
import java.util.List;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

/**
 *
 * @author Emilio
 */
public class TMPartido implements TableModel{
    private List<Partido> partidos;
    private Data d;

    public TMPartido(List<Partido> partidos) throws SQLException{
        this.partidos = partidos;
        d=new Data();
    }

    @Override
    public int getRowCount() {
        return partidos.size();
    }

    @Override
    public int getColumnCount() {
        return 3;
    }

    @Override
    public String getColumnName(int columnIndex) {
        String nombre=null;
        switch(columnIndex){
            case 0:
                nombre="ID";
                break;
            case 1:
                nombre="Seleccion 1";
                break;
            case 2:
                nombre="Seleccion 2";
                break;
//            case 3:
//                nombre="Arbitro";
//                break;
//            case 4:
//                nombre="Arbitro Lateral 1";
//                break;
//            case 5:
//                nombre="Arbitro Lateral 2";
//                break;
//            case 6:
//                nombre="Cuarto Arbitro";
//                break;
//            case 7:
//                nombre="Estadio";
//                break;
//            case 8:
//                nombre="Publico Asistente";
//                break;
//            case 9:
//                nombre="Fecha";
//                break;
//            case 10:
//                nombre="Hora Inicio";
//                break;
//            case 11:
//                nombre="Hora Termino";
//                break;
//            case 12:
//                nombre="Fase";
//                break;
        }
        
        return nombre;
    }

    @Override
    public Class<?> getColumnClass(int columnIndex) {
        return String.class;
    }

    @Override
    public boolean isCellEditable(int rowIndex, int columnIndex) {
        return false;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Object o=null;
        Partido p=partidos.get(rowIndex);
        
        switch(columnIndex){
            case 0:
                o=p.getId();
                break;
            case 1:
                try {
                    int idS1 = p.getIdSeleccion1();
                    Seleccion s = d.getSeleccion(idS1);
                    int idP = s.getPais();
                    Nacionalidad pais = d.getNacionalidad(idP);
                    o = pais.getPais();
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }               
                break;
            case 2:
                try {
                    int idS2 = p.getIdSeleccion2();
                    Seleccion s = d.getSeleccion(idS2);
                    int idP2 = s.getPais();
                    Nacionalidad pais2 = d.getNacionalidad(idP2);
                    o = pais2.getPais();
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }                    
                break;       
        }
        return o;
    }

    @Override
    public void setValueAt(Object aValue, int rowIndex, int columnIndex) {
    }

    @Override
    public void addTableModelListener(TableModelListener l) {
    }

    @Override
    public void removeTableModelListener(TableModelListener l) {
    }
    
}

package model;

import bd.Data;
import java.util.List;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

public class TMJugador implements TableModel {

    private List<Jugador> jugadores;
    private Data d;

    public TMJugador() {
    }

    public TMJugador(List<Jugador> jugadores) {
        this.jugadores=jugadores;
        this.d = d;
    }

    @Override
    public int getRowCount() {
        return jugadores.size();
    }

    @Override
    public int getColumnCount() {
        return 3;
    }

    @Override
    public String getColumnName(int columnIndex) {
        if (columnIndex == 0) {
            return "ID";
        } else if (columnIndex == 1) {
            return "Nombre";
        } else {
            return "Apellido";
        }
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
        Jugador j = jugadores.get(rowIndex);

        if (columnIndex == 0) {
            return j.getId();
        } else if (columnIndex == 1) {
            return j.getNombre();
        } else {
            return j.getApellido();
        }
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

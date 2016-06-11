package model;

import bd.Data;
import java.util.List;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

public class TMCuerpoTecnico implements TableModel {
    private List<CT> cuerpot;
    private Data d;

    public TMCuerpoTecnico(List<CT> cuerpot) {
        this.cuerpot = cuerpot;
        this.d = d;
    }

    @Override
    public int getRowCount() {
        return cuerpot.size();
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
        CT ct = cuerpot.get(rowIndex);

        if (columnIndex == 0) {
            return ct.getId();
        } else if (columnIndex == 1) {
            return ct.getNombre();
        } else {
            return ct.getApellido();
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

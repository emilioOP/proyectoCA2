package model;

import java.util.List;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

public class TMArbitro implements TableModel {
    private List<Arbitro> arbitros;

    public TMArbitro(List<Arbitro> arbitros) {
        this.arbitros = arbitros;
    }

    @Override
    public int getRowCount() {
        return arbitros.size();
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
        Arbitro arbitro = arbitros.get(rowIndex);

        if (columnIndex == 0) {
            return arbitro.getId();
        } else if (columnIndex == 1) {
            return arbitro.getNombre();
        } else {
            return arbitro.getApellido();
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

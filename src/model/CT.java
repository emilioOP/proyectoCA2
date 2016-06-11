package model;

public class CT {

    private int id;
    private String nombre;
    private String apellido;
    private int edad;
    private int nacionalidad;
    private int clubDeportivo;
    private int aniosComoDT;
    private int sueldoFIFA;

    public CT() {
    }

    public CT(int id, String nombre, String apellido, int edad, int nacionalidad, int clubDeportivo, int aniosComoDT, int sueldoFIFA) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.nacionalidad = nacionalidad;
        this.clubDeportivo = clubDeportivo;
        this.aniosComoDT = aniosComoDT;
        this.sueldoFIFA = sueldoFIFA;
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

    public int getClubDeportivo() {
        return clubDeportivo;
    }

    public void setClubDeportivo(int clubDeportivo) {
        this.clubDeportivo = clubDeportivo;
    }

    public int getAniosComoDT() {
        return aniosComoDT;
    }

    public void setAniosComoDT(int aniosComoDT) {
        this.aniosComoDT = aniosComoDT;
    }

    public int getSueldoFIFA() {
        return sueldoFIFA;
    }

    public void setSueldoFIFA(int sueldoFIFA) {
        this.sueldoFIFA = sueldoFIFA;
    }

}

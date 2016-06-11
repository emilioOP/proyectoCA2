package model;

public class Jugador {

    private int id;
    private String nombre;
    private String apellido;
    private int edad;
    private int nacionalidad;
    private int clubDeportivo;
    private int estadoFisico;
    private int posicion;
    private int nroCamiseta;
    private int aniosComoJugador;
    private int goles;
    private int atajadas;
    private int sueldoFIFA;
    private int tarjetasAmarillas;
    private int tarjetasRojas;
    private boolean titular;
    private boolean habilitado;

    public Jugador() {
    }

    public Jugador(int id, String nombre, String apellido, int edad, int nacionalidad, int clubDeportivo, int estadoFisico, int posicion, int nroCamiseta, int aniosComoJugador, int goles, int atajadas, int sueldoFIFA, int tarjetasAmarillas, int tarjetasRojas, int titular, int habilitado) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.nacionalidad = nacionalidad;
        this.clubDeportivo = clubDeportivo;
        this.estadoFisico = estadoFisico;
        this.posicion = posicion;
        this.nroCamiseta = nroCamiseta;
        this.aniosComoJugador = aniosComoJugador;
        this.goles = goles;
        this.atajadas = atajadas;
        this.sueldoFIFA = sueldoFIFA;
        this.tarjetasAmarillas = tarjetasAmarillas;
        this.tarjetasRojas = tarjetasRojas;
        
        if(titular==1){
            this.titular=true;
        }else{
            this.titular=false;
        }
        
        if(titular==1){
            this.habilitado=true;
        }else{
            this.habilitado=false;
        }        
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

    public int getEstadoFisico() {
        return estadoFisico;
    }

    public void setEstadoFisico(int estadoFisico) {
        this.estadoFisico = estadoFisico;
    }

    public int getPosicion() {
        return posicion;
    }

    public void setPosicion(int posicion) {
        this.posicion = posicion;
    }

    public int getNroCamiseta() {
        return nroCamiseta;
    }

    public void setNroCamiseta(int nroCamiseta) {
        this.nroCamiseta = nroCamiseta;
    }

    public int getAniosComoJugador() {
        return aniosComoJugador;
    }

    public void setAniosComoJugador(int aniosComoJugador) {
        this.aniosComoJugador = aniosComoJugador;
    }

    public int getGoles() {
        return goles;
    }

    public void setGoles(int goles) {
        this.goles = goles;
    }

    public int getAtajadas() {
        return atajadas;
    }

    public void setAtajadas(int atajadas) {
        this.atajadas = atajadas;
    }

    public int getSueldoFIFA() {
        return sueldoFIFA;
    }

    public void setSueldoFIFA(int sueldoFIFA) {
        this.sueldoFIFA = sueldoFIFA;
    }

    public int getTarjetasAmarillas() {
        return tarjetasAmarillas;
    }

    public void setTarjetasAmarillas(int tarjetasAmarillas) {
        this.tarjetasAmarillas = tarjetasAmarillas;
    }

    public int getTarjetasRojas() {
        return tarjetasRojas;
    }

    public void setTarjetasRojas(int tarjetasRojas) {
        this.tarjetasRojas = tarjetasRojas;
    }

    public int isTitular() {
        int bit=0;
        if(this.titular){
            bit=1;
        }
        return bit;
    }

    public void setTitular(int bit) {
        if(bit==1){
            this.titular=true;
        }else if(bit==0){
            this.titular=false;
        }
    }

    public int isHabilitado() {
        int bit=0;
        if(this.habilitado){
            bit=1;
        }
        return bit;
    }

    public void setHabilitado(int bit) {
        if(bit==1){
            this.habilitado = true;
        }else if(bit==0){
            this.habilitado=false;
        }
    }

}

package app.modelo;

public class TBook {
    String titulo, fecha, autor;
    int checkedOut;

    public TBook() {

    }

    public TBook(String titulo, String fecha, String autor, int checkedOut) {
        this.titulo = titulo;
        this.fecha = fecha;
        this.autor = autor;
        this.checkedOut = checkedOut;
    }

    public int Consultado() {
        checkedOut++;
        return checkedOut;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getCheckedOut() {
        return checkedOut;
    }

    public void setCheckedOut(int checkedOut) {
        this.checkedOut = checkedOut;
    }
}

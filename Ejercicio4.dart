
class Libro {
    String titulo;
    String autor;
    int anioPublicacion;

    Libro(this.titulo, this.autor, this.anioPublicacion);

    void mostrarDetalles() {
        print('Titulo: $titulo');
        print('Autor: $autor');
        print('Paginas: $anioPublicacion');
    }
}
class Biblioteca {
  List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
  }
  void eliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  void listarLibros() {
    for (var libro in libros) {
      libro.mostrarDetalles();
    }
  }
}
void main() {
    print('Hello, World!');
}
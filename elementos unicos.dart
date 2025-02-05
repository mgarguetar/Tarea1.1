void main() {
  List<int> listaOriginal = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
  List<int> listaUnica = obtenerElementosUnicos(listaOriginal);

  print("Elementos únicos: $listaUnica");
}

List<int> obtenerElementosUnicos(List<int> lista) {
  return lista.toSet().toList();
}

void main() {
  List<int> listaOriginal = [1, 2, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 9];
  List<int> listaUnicos = obtenerElementosUnicos(listaOriginal);
  print(listaUnicos);
}

List<int> obtenerElementosUnicos(List<int> lista) {
  Map<int, int> contador = {};
  List<int> unicos = [];

  for (int numero in lista) {
    if (contador.containsKey(numero)) {
      contador[numero] = contador[numero]! + 1;
    } else {
      contador[numero] = 1;
    }
  }

  contador.forEach((key, value) {
    if (value == 1) {
      unicos.add(key);
    }
  });

  return unicos;
}

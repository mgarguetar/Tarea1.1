void main() {
  List<int> fibonacci = [0, 1];

  for (int i = 2; i < 20; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }

  print(fibonacci);
}

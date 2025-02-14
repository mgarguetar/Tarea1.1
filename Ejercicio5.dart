class CuentaBancaria{
  String titular;
  double saldo;

  CuentaBancaria({required this.titular, required this.saldo});

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print("Depósito realizado con éxito. Saldo actual: $saldo");
    }
    else {
      print("Error: La cantidad a depositar debe ser mayor a 0");
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= saldo) {
        saldo -= cantidad;
        print("Retiro realizado con éxito. Saldo actual: $saldo");
      }
      else if (cantidad > saldo) {
        print("Error: Saldo insuficiente");
      }
    else {
      print("Error: La cantidad a retirar debe ser mayor a 0");
    }
  }

  void consltarSaldo() {
    print("Titular: $titular, Saldo: $saldo");
  }
}

void main() {
  CuentaBancaria cuenta1 = CuentaBancaria(titular: "Juan Pérez", saldo: 1000.0);
  cuenta1.consltarSaldo();
  print("Depositando 500");
  cuenta1.depositar(500.0);
  print("retirando 200");
  cuenta1.retirar(200.0);
  cuenta1.consltarSaldo();

  print("\n");
  CuentaBancaria cuenta2 = CuentaBancaria(titular: "María López", saldo: 2000.0);
  print("Prueba de errores:");
  cuenta2.consltarSaldo();
  print("Depositando -500");
  cuenta2.depositar(-500.0);
  print("retirando 3000");
  cuenta2.retirar(3000.0);
  cuenta2.consltarSaldo();
}
class Empleados {
  final String nombre;
  final String puesto;
  final double salario;

  Empleados(
      {required this.nombre, required this.puesto, required this.salario});
}

void main() {
  final empleado1 =
      Empleados(nombre: 'Juan', puesto: 'Gerente', salario: 30000);
  final empleado2 =
      Empleados(nombre: 'Pedro', puesto: 'Sub-Gerente', salario: 25000);
  final empleado3 =
      Empleados(nombre: 'Maria', puesto: 'secretaria', salario: 15000);
  final empleado4 =
      Empleados(nombre: 'Jose', puesto: 'Contador', salario: 20000);

  void Salariototal() {
    final total = empleado1.salario +
        empleado2.salario +
        empleado3.salario +
        empleado4.salario;
    print('El salario total de la empresa es: $total');
  }

  void SalarioPromedio() {
    final promedio = (empleado1.salario +
            empleado2.salario +
            empleado3.salario +
            empleado4.salario) /
        4;
    print('El salario promedio de la empresa es: $promedio');
  }

  Salariototal();
  SalarioPromedio();
}

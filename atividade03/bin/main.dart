import 'atividade03.dart';

void main() {
  Empresa empresa = Empresa();

  Funcionario funcionario1 = Funcionario(1, 'Taylor Swift', 'Desenvolvedora');
  Funcionario funcionario2 = Funcionario(2, 'Sabrina Carpenter', 'Designer');
  Funcionario funcionario3 = Funcionario(3, 'Billie Eilish', 'Desenvolvedora Web');
  Funcionario funcionario4 = Funcionario(4, 'Chappell Roan', 'Desenvolvedora Mobile');

  funcionario1.salario = 6000.0;
  funcionario2.salario = 5500.0;
  funcionario3.salario = 7000.0;
  funcionario4.salario = 5500.0;

  empresa.adicionarFuncionario(funcionario1);
  empresa.adicionarFuncionario(funcionario2);
  empresa.adicionarFuncionario(funcionario3);
  empresa.adicionarFuncionario(funcionario4);

  empresa.listarFuncionarios();

  funcionario2.aumentarSalario(8);
  funcionario4.aumentarSalario(10);

  empresa.listarFuncionarios();

  empresa.removerFuncionario(3);

  empresa.listarFuncionarios();
}

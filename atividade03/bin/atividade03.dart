import 'package:atividade03/atividade03.dart' as atividade03;

class Funcionario {
  final int id;
  String nome;
  String cargo;
  double _salario = 0.0;

  Funcionario(this.id, this.nome, this.cargo);

  double get salario => _salario;

  set salario(double novoSalario) {
    if (novoSalario > 0) {
      _salario = novoSalario;
    } else {
      print('O salário deve ser maior que zero.\n');
    }
  }

  void aumentarSalario(double percentual) {
  if (percentual > 0) {
    _salario += _salario * (percentual / 100);
    print('Salário de $nome atualizado para R\$ $_salario!\n');
  } else {
    print('O percentual de aumento deve ser positivo.\n');
  }
}

  void exibirInformacoes() {
    print('ID: $id | Nome: $nome | Cargo: $cargo | Salário: R\$$_salario\n');
  }
}


class Empresa {
  List<Funcionario> funcionarios = [];

  void adicionarFuncionario(Funcionario funcionario) {
    funcionarios.add(funcionario);
    print('Funcionário ${funcionario.nome} adicionado com sucesso!\n');
  }

  void removerFuncionario(int id) {
    funcionarios.removeWhere((funcionario) => funcionario.id == id);
    print('Funcionário com id $id removido com sucesso!\n');
  }

  void listarFuncionarios() {
    if (funcionarios == []) {
      print('Nenhum funcionário cadastrado.\n');
    } else {
      for (var funcionario in funcionarios) {
        funcionario.exibirInformacoes();
      }
    }
  }
}

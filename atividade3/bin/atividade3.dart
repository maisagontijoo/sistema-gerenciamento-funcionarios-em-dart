import 'package:atividade3/atividade3.dart' as atividade3;
import 'dart:io';

// Desenvolva um sistema de cadastro de funcionários que permita adicionar, remover, aumentar salário e exibir informações dos funcionários.

class Empresa {
  List<Funcionario> lista = <Funcionario>[];

  void adicionarFuncionario() {
    Funcionario funcionario = Funcionario();
    print('Nome do funcionário: ');
    String? nome = stdin.readLineSync()?.toUpperCase() ?? "";
    funcionario.setNome(nome);

    print('Cargo do funcionário:');
    String? cargo = stdin.readLineSync() ?? "";
    funcionario.setCargo(cargo);

    print('Adicione o salário:');
    String? salario = stdin.readLineSync() ?? "";
    double salarioValor = double.parse(salario);
    funcionario.setSalario(salarioValor);

    lista.add(funcionario);
    print('Funcionário adicionado com o id: ${lista.length - 1}');
  }

  void listarFuncionarios() {
    print('ID | Nome');
    for (var i = 0; i < lista.length; i++) {
      print('$i | ${lista[i].getNome}');
    }
  }

  void verificarIdDoUsuario() {
    print('Digite o nome do usuário que você deseja procurar: ');
    String? nomeFuncionario = stdin.readLineSync()?.toUpperCase() ?? "";
    for (var i = 0; i < lista.length; i++) {
      if (lista[i].getNome == nomeFuncionario) {
        print('O ID do funcionário $nomeFuncionario é: $i');
      }
    }
  }

  void listarFuncionarioEspecifico() {
    print('Qual o ID do funcionário que quer exibir?');
    String? position = stdin.readLineSync() ?? "";
    int idFuncionario = int.parse(position);
    print('O usuário correspondente ao ID $idFuncionario é ${lista[idFuncionario].getNome}');
  }

  void removerFuncionario() {
    print('Qual o ID do funcionário que deseja remover?');
    String? position = stdin.readLineSync() ?? "";
    int idFuncionario = int.parse(position);

    if (idFuncionario >= 0 && idFuncionario < lista.length) {
      String nomeFuncionario = lista[idFuncionario].getNome;
      print('O funcionário $nomeFuncionario foi removido da empresa.');
      print('Atenção! Verifique o ID dos usuários novamente, pois, com a remoção de um funcionário, o ID de todos os outros funcionários são alterados!');
      lista.removeAt(idFuncionario);
    } else {
      print("Id inválido!");
    }
  }
}

class Funcionario {
  late String _nome;
  late String _cargo;
  late double _salario;

  String get getNome => _nome;
  String get getCargo => _cargo;
  double get getSalario => _salario;

  void setNome(String nome) {
    _nome = nome;
  }

  void setCargo(String cargo) {
    _cargo = cargo;
  }

  void setSalario(double salario) {
    _salario = salario;
  }

  void aumentarSalario(double aumento) {
    _salario = _salario + aumento;
  }

  void exibirInformacoes() {
    print('Nome: $getNome, Cargo: $getCargo, Salário: $getSalario');
  }
}
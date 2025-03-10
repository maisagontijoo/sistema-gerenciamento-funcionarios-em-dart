import 'dart:io';
import 'atividade3.dart';

void main(List<String> arguments){
    print('Seja bem vindo(a) a empresa!');
    bool sair = false;
    Empresa empresa = Empresa();
    try{
        while(!sair){
            print("O que deseja fazer? \n1-Adicionar funcionário \n2-Exibir todos os funcionários \n3-Exibir funcionário específico \n4-Remover funcionário \n5-Verificar id \n6-Sair");
            String? escolha = stdin.readLineSync() ?? "";
            switch(escolha) {
                case '1':
                empresa.adicionarFuncionario();
                break;

                case '2':
                empresa.listarFuncionarios();
                break;

                case '3':
                empresa.listarFuncionarioEspecifico();
                break;

                case '4':
                empresa.removerFuncionario();
                break;

                case '5':
                empresa.verificarIdDoUsuario();
                break;

                case '6':
                sair = true;
                break;
               
                default:
                print('Valor indefinido');
                break;
            }
        }
    }
    catch (e){
        rethrow;
    }
}

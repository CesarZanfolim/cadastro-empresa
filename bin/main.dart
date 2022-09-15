import 'dart:io';

import 'package:desafio_dart/console.dart';
import 'package:desafio_dart/empresa.dart';
import 'package:desafio_dart/endereco.dart';
import 'package:desafio_dart/socio.dart';
import 'package:desafio_dart/socio_pf.dart';
import 'package:desafio_dart/socio_pj.dart';

void main(List<String> args) {
  List<Empresa> empresas = [];

  print('''
  MENU INICIAL

  1. CADASTRAR EMPRESA
  2. PESQUISAR EMPRESA
  3. LISTA DE EMPRESAS CADASTRADAS
  4. EXCLUIR EMPRESA
  0. SAIR
''');
  String opcao = stdin.readLineSync()!;
  while (opcao != '0') {
    switch (opcao) {
      case '1':
        Empresa cadastro = Console.cadastrarEmpresa();
        empresas.add(cadastro);
        print('Cadastro realizado com sucesso. ID: ${cadastro.id}');
        break;
      case '2':
        print('''
    1. Buscar por CNPJ (Empresa)
    2. Buscar por CPF/CNPJ (Sócio)
        ''');
        String opcaoPesquisa = stdin.readLineSync()!;
        if (opcaoPesquisa == '1') {
        } else if (opcaoPesquisa == '2') {
        } else {
          print('Opção inválida.');
        }
        break;
      case '3':
        Console.listarEmpresas(empresas);
        break;
      case '4':
        Console.excluirEmpresa(empresas);
        break;
    }
    print('''
MENU INICIAL

  1. CADASTRAR EMPRESA
  2. PESQUISAR EMPRESA
  3. LISTA DE EMPRESAS CADASTRADAS
  4. EXCLUIR EMPRESA
  0. SAIR
''');
    opcao = stdin.readLineSync()!;
  }
  print('Programa Encerrado.');
}

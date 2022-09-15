import 'dart:io';

import 'package:desafio_dart/console.dart';
import 'package:desafio_dart/endereco.dart';
import 'package:desafio_dart/socio.dart';
import 'package:desafio_dart/socio_pf.dart';
import 'package:desafio_dart/socio_pj.dart';

void main(List<String> args) {
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
        Console.cadastrarEmpresa();
        break;
      case '2':
        break;
      case '3':
        break;
      case '4':
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
}

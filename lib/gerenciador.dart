import 'dart:io';

import 'package:desafio_dart/cadastro.dart';
import 'package:desafio_dart/cadastro_empresa.dart';

class Gerenciador {
  static List<Cadastro> registrarEmpresa() {
    String id;
    String nome;
    String razaoSocial;
    String telefone;
    String documento;
    String endereco;
    final timeLog;

    print('Nome Fantasia:');
    nome = stdin.readLineSync()!;
    print('Razão Social:');
    razaoSocial = stdin.readLineSync()!;
    print('Telefone (apenas número. Ex.: 5531999999999):');
    String telefoneDigitado = stdin.readLineSync()!;
    while (telefoneDigitado.length != 13) {
      print(
          'Telefone inválido.\nPor favor, digite novamente utilizando apenas números\ne com código do pais e DDD:');
      telefoneDigitado = stdin.readLineSync()!;
    }
    telefone = telefoneDigitado;

    print('Digite o CNPJ, utilizando apenas número.');
    String documentoDigitado = stdin.readLineSync()!;
    while (documentoDigitado.length != 14) {
      print(
          'CNPJ inválido.\nPor favor, digite novamente utilizando apenas números:');
      documentoDigitado = stdin.readLineSync()!;
    }
    documento = documentoDigitado;
    print('Digite o endereço:');
    endereco = stdin.readLineSync()!;
    timeLog = DateTime.now();
    List<Cadastro> lista = [];
    return lista;
  }
}

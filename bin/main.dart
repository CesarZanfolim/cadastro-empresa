import 'dart:io';

import 'package:desafio_dart/console.dart';
import 'package:desafio_dart/socio.dart';
import 'package:desafio_dart/socio_pj.dart';

void main(List<String> args) {
  Socio teste = Console.cadastrar();
  print("CPF: ${teste.documento}. Telefone: ${teste.telefone}");

  //String nomeProcurado = stdin.readLineSync()!;

  //if (teste.nome == nomeProcurado) {
  //  print(teste.nome);
  //} else {
  //  print('usuário não localizado ${teste.nome}');
  //}
}

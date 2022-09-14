import "dart:io";
import 'package:desafio_dart/socio.dart';
import 'package:desafio_dart/socio_pf.dart';
import 'package:desafio_dart/socio_pj.dart';

class Console {
  static Socio cadastrar() {
    String nome;
    String numeroDocumento;
    String numeroTelefone;
    String endereco;
    print('Digite o nome completo');
    nome = stdin.readLineSync()!;
    print('Digite o número do documento (CPF ou CPPJ)');
    String documentoDigitado = stdin.readLineSync()!;
    while (documentoDigitado.length != 11 && documentoDigitado.length != 14) {
      print(
          'O documento digitado é inválido.\nPor favor, digite novamente utilizando apenas números:');
      documentoDigitado = stdin.readLineSync()!;
    }
    numeroDocumento = documentoDigitado;
    print('Digite o endereço');
    endereco = stdin.readLineSync()!;
    print('digite o telefone (Ex.: 11999999999');
    String telefoneDigitado = stdin.readLineSync()!;
    while (documentoDigitado.length != 11) {
      print(
          'O telefone digitado é inválido.\nPor favor, digite novamente utilizando apenas números');
      telefoneDigitado = stdin.readLineSync()!;
    }
    numeroTelefone = telefoneDigitado;
    if (numeroDocumento.length == 14) {
      return SocioPJ(
          nome: nome,
          endereco: endereco,
          cnpj: numeroDocumento,
          telefoneSocio: numeroTelefone);
    } else {
      return SocioPF(
          nome: nome,
          endereco: endereco,
          cpf: numeroDocumento,
          telefoneSocio: numeroTelefone);
    }
  }
}

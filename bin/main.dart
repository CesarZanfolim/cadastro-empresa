import "dart:io";
import "package:desafio_dart/cadastro.dart";
import 'package:desafio_dart/gerenciador.dart';

void main() {
  Cadastro proz = Cadastro(
      nomeSocio: 'César',
      CPF: 'CPF',
      CNPJ: 'CNPJ',
      endereco: 'endereco',
      timeLog: 'timeLog',
      id: 'id',
      razaoSocial: 'razaoSocial',
      telefone: 'telefone');

  print(Gerenciador.registrarEmpresa());
}

import "dart:io";
import "package:desafio_dart/cadastro.dart";

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

  List<Cadastro> prozLista = [proz];
  print(prozLista[0].nomeSocio);
}

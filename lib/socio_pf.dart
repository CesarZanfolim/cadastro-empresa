import 'package:desafio_dart/socio.dart';

class SocioPF extends Socio {
  String cpf;
  String telefone;
  SocioPF(
      {required this.cpf,
      required super.nome,
      required super.endereco,
      required this.telefone})
      : super(cpf, telefone);
}

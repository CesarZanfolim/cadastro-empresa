import 'package:desafio_dart/socio.dart';

class SocioPF extends Socio {
  String cpf;
  String telefoneSocio;
  SocioPF(
      {required this.cpf,
      required super.nome,
      required super.endereco,
      required this.telefoneSocio})
      : super(cpf, telefoneSocio);
}

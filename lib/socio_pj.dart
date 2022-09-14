import 'dart:io';

import 'package:desafio_dart/socio.dart';

class SocioPJ extends Socio {
  String cnpj;
  String telefoneSocio;
  SocioPJ(
      {required this.cnpj,
      required super.nome,
      required super.endereco,
      required this.telefoneSocio})
      : super(cnpj, telefoneSocio);
}

import 'dart:io';

import 'package:desafio_dart/socio.dart';

class SocioPJ extends Socio {
  String cnpj;
  String telefone;
  SocioPJ(
      {required this.cnpj,
      required super.nome,
      required super.endereco,
      required this.telefone})
      : super(cnpj, telefone);
}

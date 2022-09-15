import 'package:desafio_dart/endereco.dart';
import 'package:desafio_dart/socio.dart';

class Empresa {
  final id;
  String razaoSocial;
  String nomeFantasia;
  String cnpj;
  Endereco endereco;
  Socio socio;
  final timeLog;

  Empresa({
    required this.id,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
    required this.endereco,
    required this.socio,
    required this.timeLog,
  });
}

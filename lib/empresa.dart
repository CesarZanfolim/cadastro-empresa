import 'package:desafio_dart/endereco.dart';
import 'package:desafio_dart/socio.dart';

class Empresa {
  final id;
  String razaoSocial;
  String nomeFantasia;
  String _cnpj;
  String _telefoneComercial;
  Endereco endereco;
  Socio socio;
  final timeLog;

  Empresa(
    this._cnpj,
    this._telefoneComercial, {
    required this.id,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.endereco,
    required this.socio,
    required this.timeLog,
  });
  String get cnpj {
    if (_cnpj.length == 14) {
      return "${_cnpj.substring(0, 3)}.${_cnpj.substring(3, 6)}.${_cnpj.substring(6, 9)}/${_cnpj.substring(9, 12)}-${_cnpj.substring(12, 14)}";
    } else {
      return "Documento inválido";
    }
  }

  String get telefoneComercial {
    if (_telefoneComercial == 11) {
      return "${_telefoneComercial.substring(0, 2)} ${_telefoneComercial.substring(2, 7)}-${_telefoneComercial.substring(7, 11)}";
    } else {
      return "Número inválido";
    }
  }
}

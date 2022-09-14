import 'package:desafio_dart/endereco.dart';

abstract class Socio {
  String nome;
  final String _documento;
  Endereco endereco;
  final String _telefone;

  Socio(
    this._documento,
    this._telefone, {
    required this.nome,
    required this.endereco,
  });
  String get documento {
    if (_documento.length == 11) {
      return "${_documento.substring(0, 3)}.${_documento.substring(3, 6)}.${_documento.substring(6, 9)}-${_documento.substring(9, 11)}";
    } else if (_documento.length == 14) {
      return "${_documento.substring(0, 3)}.${_documento.substring(3, 6)}.${_documento.substring(6, 9)}/${_documento.substring(9, 12)}-${_documento.substring(12, 14)}";
    } else {
      return "Documento inválido";
    }
  }

  String get telefone {
    if (_telefone.length == 11) {
      return "${_telefone.substring(0, 2)} ${_telefone.substring(2, 7)}-${_telefone.substring(7, 11)}";
    } else {
      return "Número inválido";
    }
  }
}

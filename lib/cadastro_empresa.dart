import 'package:desafio_dart/cadastro.dart';

class Empresa extends Cadastro {
  final id;
  final _razaoSocial;
  final _telefone;

  Empresa(
    this.id,
    this._razaoSocial,
    super.nome,
    super._documento,
    super.endereco,
    this._telefone,
    super._timeLog,
  );
  String get razaoSocial => _razaoSocial;
  set razaoSocial(String razaoSocial) => _razaoSocial;
  String get telefone => _telefone;
  set telefone(String telefone) => _telefone;
}

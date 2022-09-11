import 'dart:html';

abstract class Cadastro {
  final nome;
  final _documento;
  final endereco;
  final _timeLog;

  Cadastro(
    this.nome,
    this._documento,
    this.endereco,
    this._timeLog,
  );
  String get documento => _documento;
  set documento(String documento) => _documento;
  String get timeLog => _timeLog;
  set timeLog(String timeLog) => _timeLog;
}

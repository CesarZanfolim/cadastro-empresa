class Endereco {
  String logradouro;
  String numero;
  String? complemento;
  String bairro;
  String cidade;
  String uf;
  String _cep;

  Endereco(this.complemento, this._cep,
      {required this.logradouro,
      required this.numero,
      required this.bairro,
      required this.cidade,
      required this.uf});

  String get cep {
    if (_cep.length == 8) {
      return "${_cep.substring(0, 2)}.${_cep.substring(2, 5)}-${_cep.substring(5, 7)}";
    } else {
      return "CEP inválido";
    }
  }
}

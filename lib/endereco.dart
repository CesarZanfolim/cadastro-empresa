class Endereco {
  String logradouro;
  String numero;
  String? complemento;
  String cidade;
  String uf;
  String cep;

  Endereco(this.complemento,
      {required this.logradouro,
      required this.numero,
      required this.cidade,
      required this.uf,
      required this.cep});
}

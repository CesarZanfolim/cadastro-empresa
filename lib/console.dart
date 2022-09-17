import "dart:io";
import 'package:desafio_dart/endereco.dart';
import 'package:desafio_dart/socio.dart';
import 'package:desafio_dart/socio_pf.dart';
import 'package:desafio_dart/socio_pj.dart';
import 'package:desafio_dart/validador.dart';
import 'package:uuid/uuid.dart';

import 'empresa.dart';

class Console {
  static Socio cadastrarSocio() {
    String nome;
    String numeroDocumento;
    String numeroTelefone;
    Endereco endereco;
    print('Preencha os dados do socio');
    print('Digite o nome completo');
    nome = stdin.readLineSync()!;
    print('Digite o número do documento (CPF ou CNPJ)');
    String documentoDigitado = stdin.readLineSync()!;
    while (documentoDigitado.length != 11 && documentoDigitado.length != 14) {
      print(
          'O documento digitado é inválido.\nPor favor, digite novamente utilizando apenas números:');
      documentoDigitado = stdin.readLineSync()!;
    }
    while (Validador.validarCNPJ(documentoDigitado) == false ||
        Validador.validarCPF(documentoDigitado) == false) {
      print(
          'O documento digitado é inválido.\nPor favor, digite novamente utilizando apenas números:');
      documentoDigitado = stdin.readLineSync()!;
    }

    numeroDocumento = documentoDigitado;
    endereco = cadastrarEndereco();
    print('digite o telefone (Ex.: 11999999999)');
    String telefoneDigitado = stdin.readLineSync()!;
    while (documentoDigitado.length != 11) {
      print(
          'O telefone digitado é inválido.\nPor favor, digite novamente utilizando apenas números');
      telefoneDigitado = stdin.readLineSync()!;
    }
    numeroTelefone = telefoneDigitado;
    if (numeroDocumento.length == 14) {
      return SocioPJ(
          nome: nome,
          endereco: endereco,
          cnpj: numeroDocumento,
          telefoneSocio: numeroTelefone);
    } else {
      return SocioPF(
          nome: nome,
          endereco: endereco,
          cpf: numeroDocumento,
          telefoneSocio: numeroTelefone);
    }
  }

  static Endereco cadastrarEndereco() {
    String logradouro;
    String numero;
    String? complemento;
    String bairro;
    String cidade;
    String uf;
    String cep;
    print('Logradouro:');
    logradouro = stdin.readLineSync()!;
    print('Número:');
    numero = stdin.readLineSync()!;
    print('Complemento:');
    complemento = stdin.readLineSync();
    print('Bairro:');
    bairro = stdin.readLineSync()!;
    print('Cidade:');
    cidade = stdin.readLineSync()!;
    print('UF:');
    uf = stdin.readLineSync()!;
    print('CEP (apenas números):');
    String cepDigitado = stdin.readLineSync()!;
    while (cepDigitado.length != 8) {
      print('CEP inválido.\nPor favor digite apenas os números');
      cepDigitado = stdin.readLineSync()!;
    }
    cep = cepDigitado;
    return Endereco(
      complemento,
      cep,
      logradouro: logradouro,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      uf: uf,
    );
  }

  static Empresa cadastrarEmpresa() {
    final id;
    String razaoSocial;
    String nomeFantasia;
    String numeroCNPJ;
    String numeroTelefone;
    Endereco endereco;
    Socio socio;
    final timeLog;
    print('Preencha os dados da Empresa');
    id = Uuid().v1();
    print('Razão Social:');
    razaoSocial = stdin.readLineSync()!;
    print('Nome Fantasia:');
    nomeFantasia = stdin.readLineSync()!;
    print('CNPJ:');
    String cnpjDigitado = stdin.readLineSync()!;
    while (cnpjDigitado.length != 14 &&
        Validador.validarCNPJ(cnpjDigitado) == false) {
      print(
          'CNPJ inválido.\nPor favor, digite novamente utilizando apenas números');
    }
    numeroCNPJ = cnpjDigitado;
    print('Telefone Comercial:');
    String numeroTelefoneDigitado = stdin.readLineSync()!;
    while (numeroTelefoneDigitado.length != 11) {
      print(
          'Número inválido.\n Digite apenas os numeros como no exempo\n11999999999');
      numeroTelefoneDigitado = stdin.readLineSync()!;
    }
    numeroTelefone = numeroTelefoneDigitado;
    endereco = cadastrarEndereco();
    socio = cadastrarSocio();
    timeLog = DateTime.now();

    return Empresa(numeroCNPJ, numeroTelefone,
        id: id,
        razaoSocial: razaoSocial,
        nomeFantasia: nomeFantasia,
        endereco: endereco,
        socio: socio,
        timeLog: timeLog);
  }

  static void listarEmpresas(List<Empresa> empresas) {
    empresas.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));
    for (var element in empresas) {
      print('''
--------------------------------------------------
    ID: ${element.id}
    CNPJ: ${element.cnpj}  Data Cadastro: ${element.timeLog}
    Razão Social: ${element.razaoSocial}
    Nome Fantasia: ${element.nomeFantasia}
    Telefone Comercial: ${element.telefoneComercial}
    Endereço: ${element.endereco.logradouro}, ${element.endereco.numero}, ${element.endereco.bairro}, ${element.endereco.cidade}/${element.endereco.uf.toUpperCase()}, ${element.endereco.cep}
    Socio:
    CPF: ${element.socio.documento}
    Nome Completo: ${element.socio.nome}
    Endereço: ${element.socio.endereco.logradouro}, ${element.socio.endereco.numero}, ${element.socio.endereco.bairro}, ${element.socio.endereco.cidade}/${element.socio.endereco.uf.toUpperCase()}, ${element.socio.endereco.cep}    
    Telefone: ${element.socio.telefone}
--------------------------------------------------
''');
    }
  }

  static void excluirEmpresa(List<Empresa> empresas) {
    print('Digite o ID da Empresa que deseja excluir:');
    String idExcluir = stdin.readLineSync()!;
    for (var i = 0; i < empresas.length; i++) {
      if (empresas[i].id == idExcluir) {
        print('''
    O nome fantasia da empresa selecionada é ${empresas[i].nomeFantasia}.
            Tem certeza que deseja excluir?
            1. Sim
            2. Não        
           ''');
        String confirmaExcluir = stdin.readLineSync()!;
        if (confirmaExcluir == '1') {
          empresas.remove(empresas[i]);
          print('Exclusão realizada');
        } else {
          print('Exclusão não realizada');
        }
        break;
      } else {}
    }
  }

  static void pesquisarEmpresa(List<Empresa> empresas) {
    print('Digite o número do documento:');
    String documentoDigitado = stdin.readLineSync()!;
    for (var i = 0; i < empresas.length; i++) {
      if (empresas[i].socio.documentoNumeros == documentoDigitado) {
        for (var element in empresas) {
          print('''
--------------------------------------------------
    ID: ${element.id}
    CNPJ: ${element.cnpj}  Data Cadastro: ${element.timeLog}
    Razão Social: ${element.razaoSocial}
    Nome Fantasia: ${element.nomeFantasia}
    Telefone Comercial: ${element.telefoneComercial}
    Endereço: ${element.endereco.logradouro}, ${element.endereco.numero}, ${element.endereco.bairro}, ${element.endereco.cidade}/${element.endereco.uf.toUpperCase()}, ${element.endereco.cep}
    Socio:
    CPF: ${element.socio.documento}
    Nome Completo: ${element.socio.nome}
    Endereço: ${element.socio.endereco.logradouro}, ${element.socio.endereco.numero}, ${element.socio.endereco.bairro}, ${element.socio.endereco.cidade}/${element.socio.endereco.uf.toUpperCase()}, ${element.socio.endereco.cep}    
    Telefone: ${element.socio.telefone}
--------------------------------------------------
''');
        }
      } else {
        print('Documento não localizado.');
      }
    }
  }
}

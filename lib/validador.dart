class Validador {
  static validarCPF(String cpf) {
    List cpfList = cpf.split('');
    int validador1 = 0;
    int validador2 = 0;
    for (var i = 1; i <= 9; i++) {
      int soma = int.parse(cpfList[i - 1]) * i;
      validador1 = validador1 + soma;
    }
    validador1 = validador1 % 11;
    for (var i = 9; i >= 1; i--) {
      int soma = int.parse(cpfList[9 - i]) * i;
      validador2 = validador2 + soma;
    }
    validador2 = validador2 % 11;

    if (validador1 == int.parse(cpfList[9]) &&
        validador2 == int.parse(cpfList[10])) {
      return true;
    } else {
      return false;
    }
  }

  static validarCNPJ(String cnpj) {
    List cnpjList = cnpj.split('');
    int validador1 = 0;
    int validador2 = 0;
    int contador1 = 0;

    for (var i = 5; i > 1; i--) {
      int soma = int.parse(cnpjList[contador1]) * i;
      validador1 = validador1 + soma;
      contador1++;
    }
    for (var i = 9; i > 1; i--) {
      int soma = int.parse(cnpjList[contador1]) * i;
      validador1 = validador1 + soma;
      contador1++;
    }
    validador1 = validador1 % 11;
    if (validador1 < 2) {
      validador1 = 0;
    } else {
      validador1 = 11 - validador1;
    }
    contador1 = 0;
    for (var i = 6; i > 1; i--) {
      int soma = int.parse(cnpjList[contador1]) * i;
      validador2 = validador2 + soma;
      contador1++;
    }
    for (var i = 9; i > 1; i--) {
      int soma = int.parse(cnpjList[contador1]) * i;
      validador2 = validador2 + soma;
      contador1++;
    }
    validador2 = validador2 % 11;
    if (validador2 < 2) {
      validador2 = 0;
    } else {
      validador2 = 11 - validador2;
    }
    if (validador1 == int.parse(cnpjList[12]) &&
        validador2 == int.parse(cnpjList[13])) {
      return true;
    } else {
      return false;
    }
  }
}

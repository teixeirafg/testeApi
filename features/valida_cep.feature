# language: pt
Funcionalidade: Batendo na API com CEP válido
  Esquema do Cenário: API batendo com CEP válido
    Quando inserir <CEP> na API "<status>"
    Então valido o retorno dos campos
    E exibo o código do IBGE


    Exemplos:
      | CEP      | status |
      | 4282030 | valido  |

  Esquema do Cenário: API batendo com CEP inválido
    Quando inserir <CEP> na API "<status>"
    Então valido a mensagem de erro


    Exemplos:
      | CEP     |status|
      | 0000000 |invalido|
      | 3265987 |invalido|
      | 5412514 |invalido|
      | 9988888 |invalido|
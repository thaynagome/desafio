#language:pt

Funcionalidade: Consulta
    Consultar veículo especifico
    Clicar no anuncio desejado, e enviar mensagem ao vendedor.

    Cenário: Consulta de veículo e contato com vendedor
        Dado que usuário acesse o site WebMotors
        E  clicar na opção 'carros economicos'

        Quando escolher o "marca", "modelo" e "versão"
        #|MARCA     |MODELO  |VERSAO                              |
        #|Chevrolet |Montana |1.4 MPFI LS CS 8V FLEX 2P MANUAL    |
        #|Honda     |Civic   |2.0 16v Flexone Ex 4p Cv            |
        #|Fiat      |Toro    |2.0 16v Turbo Diesel Volcano 4wd At9|

        E acessar anúncio especifico
        E preencher campos "nome", "e-mail", "telefone" e "mensagem"
        Então "Enviar mensagem"
#language: pt

Funcionalidade: Remover do Carrinho
    Para que eu possa manter meu Carrinho apenas com itens desejados
    Sendo um cliente que desistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Cenario: Remover 1 item
        Dado que eu tenho os seguintes itens no carrinho:
            | nome                   | preco    |
            | CupCake                | R$ 8,70  |
            | Donut                  | R$ 2,50  |
            | Pão Artesanal Italiano | R$ 15,00 |
        Quando eu removo somente o item 1
        Então o  valor deve ser de "R$ 18,40"

    Cenario: Remover todos os itens
        Dado que eu tenho os seguintes itens no carrinho:
            | nome                   | preco    |
            | CupCake                | R$ 8,70  |
            | Donut                  | R$ 2,50  |
            | Pão Artesanal Italiano | R$ 15,00 |
        Quando eu removo todos os itens
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"
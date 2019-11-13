#languange: pt

Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar uma compra 
    Sendo um cliente que já decidiu o que deseja comer
    Posso adicionar itens ao meu carrinho

    Cenario: Adicionar uma unidade
        Dado que o produto desejado é "Cup Cake"
        E o valor do produto é  de "R$ 8,70"
        Quando eu adicionar 1 unidade
        Então 1 unidade deve ser adicionado ao carrinho
        E o valor total deve ser de "R$ 8,70 "

    Cenario: Adicionar duas unidades
        Dado que o produto desejado é "Donut"
        E o valor do produto é de "R$ 2,50"
        Quando eu adiciono 2 unidades
        Então 2 unidades devem ser adicionados ao carrinho
        E o valor total deve ser de "R$ 5,00"


    Cenario: Adicionar vários itens
        Dado que os produtos desejados são:
            | nome                   | preco    |
            | CupCake                | R$ 8,70  |
            | Donut                  | R$ 2,50  |
            | Pão Artesanal Italiano | R$ 15,00 |
        Quando eu adiciono todos os itens
        Então vejo todos os itens no carrinho
        E  o valor total deve ser de "R$ 27,10"
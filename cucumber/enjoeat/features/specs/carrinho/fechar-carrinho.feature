#language: pt

@green_food
Funcionalidade: Fechar Carrinho
    Para que eu possa ter certeza de que vou receber e pagar o tudo certo
    Sendo um usuário que adicionou itens 
    Posso fechar o meu Carrinho
    
    @total
    Cenário: Valor total e frete

        Dado que eu adicionei os seguintes itens no carrinho:
      | quantidade | nome                | descricao                                | subtotal |
      | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
      | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        Quando eu fecho o meu carrinho
        Então o valor total de itens deve ser igual a "R$ 35,90"
        E o valor do frete deve ser igual a "R$ 8,00"
        E o valor total da compra deve ser igual "R$ 43,90"


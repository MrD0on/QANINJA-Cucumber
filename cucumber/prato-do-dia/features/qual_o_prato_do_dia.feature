#language:pt

Funcionalidade: Qual é o prato do Dia
    Queremos saber qual o prato do dia na capital paulista

    # Cenario: Hoje é dia de Virado a Paulista

    #     Dado que hoje é "Segunda-feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Virado a Paulista"

    # Cenario: Hoje é dia de Dobradinha
    #     Dado que hoje é "Terça-feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Dobradinha"

    # Cenario: Hoje é dia de Feijoada
    #     Dado que hoje é "Quarta-feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Feijoada"

    Esquema do Cenario: Prato do dia

        Dado que hoje é <dia>
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser <resposta>

        Exemplos:
        | dia               | resposta              |
        | "Segunda-feira"   | "Virado a Paulista"   |
        | "Terça-feira"     | "Dobradinha"          |
        | "Quarta-feira"    | "Feijoada"            |
        | "Quinta-feira"    | "Macarronada"         |
        | "Sexta-feira"     | "Filé de Merluza"     |
        | "Sábado"          | "Veja o cardápio"     |
        | "Domingo"         | "Fechado"             |
        | "fedf"            | "Dia inválido"        |
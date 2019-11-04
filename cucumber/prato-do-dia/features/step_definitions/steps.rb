
module Enjoeat
    def prato_do_dia(dia)
    case dia
        when 'Segunda-feira'
            'Virado a Paulista'
        when 'Terça-feira'
            'Dobradinha'
        when 'Quarta-feira'
            'Feijoada'
        when 'Quinta-feira'
            'Macarronada'
        when 'Sexta-feira'
            'Filé de Merluza'
        when 'Sábado'
            'Veja o cardápio'
        when 'Domingo'
            'Fechado'
        else
            'Dia inválido'
        end
    end
end
World Enjoeat

Dado("que hoje é {string}") do |dia|
    @hoje = dia
end
                                                                               
Quando("eu pergunto qual é o prato do dia") do                               
   @resposta_obtida = prato_do_dia(@hoje)
end                                                                          

Então("a resposta deve ser {string}") do |resposta_esperada|                            
   expect(@resposta_obtida).to eql resposta_esperada
end                                                                          
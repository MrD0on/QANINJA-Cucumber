Dado("que eu tenho uma lista de restaurantes") do 
   @restaurant_data = [
    { name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9 },
    { name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5 },
    { name: 'Coffee Corner', category: 'Cafeteria', delivery_time: '20 minutos', rating: 4.8 }
    ]
  end

Quando("acesso a lista de restaurantes") do
   visit '/restaurants'

  end
  
  Então("vejo todas as opções disponíveis") do
    restaurantes = all('.restaurant-item')
    expect(restaurantes.size).to be > 0
    #o metodo all devolve uma colegação de elementos (arrays). O size vai trazer a quantidade dos elementos
  end
  
  Então("cada restaurante deve exibir sua categoria") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value[:category] 
    end
  end
  
  Então("cada restaurante deve exibir o tempo de entrega") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value[:delivery_time] 
    end
  end
  
  Então("cada restaurante deve exibir sua nota de avaliação") do
    restaurants = all('.restaurant-item')

    @restaurant_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value[:rating] 
    end
  end
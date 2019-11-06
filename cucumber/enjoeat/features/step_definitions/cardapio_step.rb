Dado("que acesso a lista de restaurantes") do
  visit "/restaurants"
end
Quando("eu acesso o restaurante {string}") do |restaurante|
  find(".restaurant-item", text: restaurante.upcase).click
end

Então("vejo os seguintes itens no cardápio:") do |table|
  itens = all(".menu-item-info-box")
  product_data = table.hashes
  product_data.each_with_index do |value, index|
    expect(itens[index]).to have_text value["produto"].upcase
    expect(itens[index]).to have_text value["descricao"]
    expect(itens[index]).to have_text value["preco"]
  end
end

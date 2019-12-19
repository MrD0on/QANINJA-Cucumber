Dado("que acesso a lista de restaurantes") do
  @rest_list_page.load
end
Quando("eu escolho o restaurante {string}") do |restaurante|
  @rest_list_page.go(restaurante)
end

Então("vejo os seguintes itens no cardápio:") do |table|
  itens = @rest_page.menu
  product_data = table.hashes
  product_data.each_with_index do |value, index|
    expect(itens[index]).to have_text value["produto"].upcase
    expect(itens[index]).to have_text value["descricao"]
    expect(itens[index]).to have_text value["preco"]
  end
end

Então("eu vejo as seguintes informações adicionais:") do |table|
  infos = table.rows_hash
  detail = @rest_page.details
  expect(detail).to have_text infos["categoria"]
  expect(detail).to have_text infos["descricao"]
  expect(detail).to have_text infos["horarios"]
end

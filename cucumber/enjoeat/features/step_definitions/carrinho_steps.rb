Dado("que o produto desejado é {string}") do |produto|
  @produto_nome = produto
end

Dado("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

Quando("eu adicionar {int} unidade\\(s)") do |quantidade|
  quantidade.times do
    @rest_page.add_to_cart(@produto_nome)
  end
end

Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
  expect(@rest_page.cart.box).to have_text "(#{quantidade}x) #{@produto_nome}"
  #Isso é interpolação de string
end

Então("o valor total deve ser de {string}") do |valor_total|
  expect(@rest_page.cart.total.text).to have_text valor_total
end

#Lista de Produtos

Dado("que os produtos desejados são:") do |table|
  @product_list = table.hashes
end

Quando("eu adiciono todos os itens") do
  @product_list.each do |p|
    p["quantidade"].to_i.times do
      @rest_page.add_to_cart(p["nome"])
    end
  end
end

Então("vejo todos os itens no carrinho") do
  @product_list.each do |p|
    expect(@rest_page.cart.box).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
  end
end

#Remover Itens

Dado("que eu tenho os seguintes itens no carrinho:") do |table|
  @product_list = table.hashes
  steps %{
    Quando eu adiciono todos os itens
  }
end

Quando("eu removo somente o {int}") do |item|
  @rest_page.cart.remove_item(item)
end

# Remover todos os itens

Quando("eu removo todos os itens") do
  @product_list.each_with_index do |value, idx|
    @rest_page.cart.remove_item(idx)
  end
end

Então("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
  expect(@rest_page.cart.box).to have_text mensagem
end

Quando("eu limpo o meu carrinho") do
  @rest_page.cart.clean
end

#fechar carrinho

Dado("que eu adicionei os seguintes itens no carrinho:") do |table|
  @product_list = table.hashes
  steps %{
   Quando eu adiciono todos os itens
 }
end

Quando("eu fecho o meu carrinho") do
  @rest_page.cart.close
end

Então("o valor total de itens deve ser igual a {string}") do |total_itens|
  expect(
    @order_page.cost_shipping[0]
  ).to have_text total_itens
end

Então("o valor do frete deve ser igual a {string}") do |shipping|
  expect(
    @order_page.cost_shipping[1]
  ).to have_text shipping
end

Então("o valor total da compra deve ser igual {string}") do |total_cart|
  expect(
    @order_page.cost_shipping[2]
  ).to have_text total_cart
end

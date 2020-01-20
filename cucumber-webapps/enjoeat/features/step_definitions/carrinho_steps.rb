Dado("que o produto desejado é {string}") do |produto|
    @produto_nome = produto

end
  
Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end
  
Quando("eu adicionar {int} unidade\\(s)") do |quantidade|
    quantidade.times do
        find('.menu-item-info-box', text: @produto_nome.upcase).find('.add-to-cart').click
    end
end
  
Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
    cart = find('#cart')
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
end
  
Então("o valor total deve ser de {string}") do |valor_total|
    cart = find('#cart')
    total = cart.find('tr', text: 'Total:').find('td')
    expect(total.text).to eql valor_total
end
   

# lista de produtos

Dado("que os produtos desejads são:") do |table|
    @product_list = table.hashes
end
  
Quando("eu adiciono todos os itens") do
    @product_list.each do |p| 
        p["quantidade"].to_i.times do 
            find('.menu-item-info-box', text: p["nome"].upcase).find('.add-to-cart').click
        end
    end
end
  
Então("vejo todos os itens no carrinho") do
    cart = find('#cart') 
    @product_list.each do |p|
        expect(cart).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
    end
end
Dado("que eu fechei o pedido com os itens:") do |table|
    @product_list = table.hashes
    steps %{
        Quando eu adiciono todos os itens
    }
    @rest_page.cart.close
end
  
Dado("informei os meus dados de entrega") do |table|
    user = table.rows_hash
    @order_page.fill_user_data(user)
end
  
Quando("eu finalizo o pedido com {string}") do |payment|
    @order_page.checkout(payment)
end
  
Então("devo ver a seguinte mensagem:") do |message|
    expect(@order_page.summary).to have_text message
end
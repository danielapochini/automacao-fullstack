Dado("que temos os seguintes restaurantes") do |table|
  @restaurant_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
  @restlist_page.load
end

Então("devo ver todos os restaurantes desta lista") do
  restaurants = @restlist_page.list

  @restaurant_data.each_with_index do |value, index|
    expect(restaurants[index]).to have_text value["nome"].upcase
    expect(restaurants[index]).to have_text value["categoria"]
    expect(restaurants[index]).to have_text value["entrega"]
    expect(restaurants[index]).to have_text value["avaliacao"]
  end
end

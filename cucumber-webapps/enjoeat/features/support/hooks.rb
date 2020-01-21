Before do 
    page.current_window.resize_to(1366,768)

    @rest_page = RestaurantPage.new
    @restlist_page = RestaurantListPage.new
    
end

Before('@bread_bakery') do 
    visit '/restaurants/bread-bakery/menu'
end

Before("@green_food") do
    visit '/restaurants/green-food/menu'
end
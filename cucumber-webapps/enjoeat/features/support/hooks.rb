Before do 
    page.current_window.resize_to(1366,768)

    @cart_page = CartPage.new
end

Before('@bread_bakery') do 
    visit '/restaurants/bread-bakery/menu'
end
class CartPage
        include Capybara::DSL
    def box
        find('#shopping-cart')
    end

    def total
        box.find('tr', text: 'Total:').find('td')
    end

    def remove_item(item)
        box.all('table tbody tr')[idx].find('.danger').click
    end
end
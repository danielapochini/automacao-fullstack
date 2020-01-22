class OrderPage
    include Capybara::DSL

    def fill_user_data(user)
        find('input[formcontrolname=name]').set user[:nome]
        find('input[formcontrolname=email]').set user[:email]
        find('input[formcontrolname=emailConfirmation]').set user[:email]
        find('input[formcontrolname=address]').set user[:rua]
        find('input[formcontrolname=number]').set user[:numero]
        find('input[formcontrolname=optionalAddress]').set user[:complemento]
    end
    
    def cost_shipping
        div = find("div[class*=col-sm-6]", text: "Frete e Total:")
        div.all("table tbody tr")
    end

    def select_pay(payment)
       payopt = find('mt-radio[formcontrolname=paymentOption]') 
       payopt.find('div', text: payment).find('div').click
    end

    def checkout(payment)
        self.select_pay(payment)
        click_button "Finalizar Pedido"
    end

    def summary
        find('.content')
    end
end
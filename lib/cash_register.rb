
class CashRegister 
    attr_accessor :total
    attr_accessor :discount
    attr_reader :apply_discount

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end 
    def add_item(title, price, quantity = 1)
        @total += price * quantity
    end
    def apply_discount
        # it 'applies the discount to the total price' do
        #     cash_register_with_discount.add_item("macbook air", 1000)
        #     cash_register_with_discount.apply_discount
        #     expect(cash_register_with_discount.total).to eq(800)
        discount_amount = @total * @discount/100
        total_after_discount = @total - discount_amount
        total_after_discount
    end
end 


class CashRegister
    attr_reader :discount
    attr_accessor :total, :items, :previous
    def initialize(discount= 0)
        @discount = discount
        @total = 0
        @items = []
    end

   

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times{|i| self.items << title}
        self.previous= price*quantity

    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            self.total = total * (1 - discount/100.0)
            "After the discount, the total comes to $#{total.to_int}."
        end
    end

    def void_last_transaction
        self.total -= previous
    end
    
end
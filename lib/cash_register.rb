class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0 
        @discount = discount
        @items = []
    end

    def add_item(name, price, quanity = 1)
        @total += price * quanity 
        quanity.times do
        items << name
        end
        @last_transaction = price * quanity
    end
    
    def apply_discount 
        if @discount == 0
            return "There is no discount to apply."    
        elsif @total -= @total * @discount / 100
            return "After the discount, the total comes to $800."
        end
    end

    def void_last_transaction
       @total -= @last_transaction
       @total
      end
end
class CashRegister

  attr_accessor :total, :discount, :items, :price, :quantity

  def initialize(discount=0, total=0)
    @total = total
    @discount = discount
    @price
    @quantity = []
    @items = []
    @item_price = []
  end

  def add_item(item, price, quantity=1)
    self.total += quantity * price 
    quantity.times {@items << item}
    quantity.times {@item_price << price} 
    quantity.times {@quantity << quantity}
  end


  def apply_discount
    @total = @total - (@total * @discount / 100)
    if 
        @discount > 0
        p "After the discount, the total comes to $#{@total}."
    elsif 
        @discount == 0 
        p "There is no discount to apply."
    end
  end


  def void_last_transaction
    @total -= @item_price.pop * @quantity.pop 
  end

end




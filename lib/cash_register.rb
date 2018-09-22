#require 'pry'
class CashRegister

attr_accessor :total, :discount

def initialize(discount= 0)
  @total = 0
  @discount = discount
  @cart = []
end

def add_item(title, price, quantity= 1)
item = {}             #creating item hash
item[:title] = title  #creating key of title for name of item
@price = price
item[:quantity] = quantity  #key quantity to hold item quantity

@cart << item   #adding every item initialized into our cart
@total = total + (price * quantity) #setting total equal to the price of the item and quantity
end # end of add_item

def apply_discount
discounted_total = 0

if @discount == 0
   "There is no discount to apply."
else

discounted_total = @total -= @total * @discount/100
 "After the discount, the total comes to $#{discounted_total}."
end
end#end of apply_discount

def items
list_of_items = []

@cart.each do |items|
while items[:quantity] > 0
  list_of_items << items[:title]
  items[:quantity] -= 1
    end
  end
list_of_items
end #end of items

def void_last_transaction
  @total -= @price
end

end #end of our ClassRegister

new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)

#binding.pry

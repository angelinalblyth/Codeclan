require("pry-byebug")
require_relative("../models/pizza_order")
require_relative("../models/customer")

PizzaOrder.delete_all()
Customer.delete_all()

customer1 = Customer.new({'name' => 'Bob'})
customer1.save()

order1 = PizzaOrder.new({
  'topping' => 'pepperoni',
  'quantity' => '2',
  'customer_id' => customer1.id
  })
  order1.save()




binding.pry
nil

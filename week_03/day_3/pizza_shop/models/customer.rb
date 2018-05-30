require('pg')
require_relative('../db/sql_runner')
require_relative('pizza_order')
class Customer

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  # def save()
  #   db = PG.connect({ dbname: 'pizza_shop', host: 'localhost'})
  #   sql = "INSERT INTO customers(name) VALUES($1) RETURNING id"
  #   values = [@name]
  #   db.prepare("save", sql)
  #   @id = db.exec_prepared("save", values)[0]["id"].to_i
  #   db.close()
  # end

  def save()
    sql = "INSERT INTO customers(name) VALUES($1) RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run(sql)
    return customers.map{|person| Customer.new(person)}
  end

  # def self.delete_all()
  #   db = PG.connect({ dbname: 'pizza_shop', host: 'localhost'})
  #   sql = "DELETE FROM customers"
  #   db.prepare('delete_all', sql)
  #   db.exec_prepared('delete_all')
  #   db.close
  # end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def pizza_orders()
    sql = "SELECT * from pizza_orders WHERE customer_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    # pizza_order_hash = results[0]
    # pizza_orders = PizzaOrder.new(pizza_order_hash)
    # return pizza_orders
    return results.map{|pizzaorders| PizzaOrder.new(pizzaorders)}
  end

end

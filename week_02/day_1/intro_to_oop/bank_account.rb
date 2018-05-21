#Each instance of a bank account has
# - Holder name
# - Balance
# - Type (business, personal account)

class BankAccount


  attr_accessor :holder_name, :balance, :type #Allows both reader & writer
  # attr_reader :holder_name, :balance, :type #Gets things out of class
  # attr_writer :holder_name, :balance, :type #Changes things in class

  # Holder Name = John
  # Balance = 500
  # Type = business
  def initialize(input_name, input_balance, input_type)   # .new in the spec needs an initialize.
    @holder_name = input_name # @symbol is global.
    @balance = input_balance
    @type = input_type
  end

  # def holder_name()
  #   return @holder_name
  # end
  #
  # def balance()
  #   return @balance
  # end
  #
  # def type()
  #   return @type
  # end
  #
  # def set_holder_name(new_name)
  #   @holder_name = new_name
  # end
  #
  # def set_account_balance(new_balance)
  #   @balance = new_balance
  # end
  #
  # def set_account_type(new_type)
  #   @type = new_type
  # end

end

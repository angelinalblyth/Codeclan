#Each instance of a bank account has
# - Holder name
# - Balance
# - Type (business, personal account)

class BankAccount
  # Holder Name = John
  # Balance = 500
  # Type = business
  def initialize(input_name, input_balance, input_type)   # .new in the spec needs an initialize.
    @holder_name = input_name # @symbol is global.
    @balance = input_balance
    @type = input_type
  end

  def holder_name()
    return @holder_name
  end

  def balance()
    return @balance
  end

  def type()
    return @type
  end

end
